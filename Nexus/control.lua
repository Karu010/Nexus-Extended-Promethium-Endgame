-- control.lua (Endgültige Version mit Korrigierter Abbau-Logik)

local upgrades = require("__Nexus__.scripts.accumulator_upgrades")
local logic = require("__Nexus__.scripts.logic")
local gui = require("__Nexus__.scripts.gui")

-- ============================================================================
-- NEXUS WELCOME NOTIFICATION SYSTEM
-- ============================================================================
function show_nexus_welcome_message(player)
    -- If the player is not valid don't do anything
    if not player.valid then
        return
    end

    local notified_players = storage.nexus_notified_players or {}
    storage.nexus_notified_players = notified_players

    -- If the player as already seen the message during this save, don't send it again
    if notified_players[player.index] then
        return
    end

    -- If the player has disabled the welcome message, don't send it again
    if not settings.get_player_settings(player)["nexus-show-welcome-message"].value then
        return
    end

    -- Send welcome message and mark them as notified
    player.print({"", "[color=orange][", {"space-location-name.nexus"}, "][/color] ", {"nexus-mod.welcome-message"}})
    storage.nexus_notified_players[player.index] = true
end

script.on_event({defines.events.on_player_joined_game}, function (event)
    local player = game.get_player(event.player_index)
    show_nexus_welcome_message(player)

    gui.create_all_limits(player)
end)

-- ============================================================================
-- ============================================================================
-- ============================================================================

script.on_init(function()
    if remote.interfaces["space_finish_script"] then
        remote.call("space_finish_script", "set_victory_location", "sol")
    end
end)

script.on_configuration_changed(function()
    if remote.interfaces["space_finish_script"] then
        remote.call("space_finish_script", "set_victory_location", "sol")
    end

    -- Show nexus welcome message
    for _, player in pairs(game.connected_players) do
        show_nexus_welcome_message(player)
    end

    -- Rebuild gui for everyone
    for _, force in pairs(game.forces) do
        gui.create_all_in_force(force, true)
    end
end)

local research_description_messages = {
    ["planet-nexus-scanning-Krastorio2-space-out"] = {"nexus-research-description.planet-nexus-scanning-Krastorio2-space-out"},
    ["planet-nexus-scanning"] = {"nexus-research-description.planet-nexus-scanning"},
    ["element882"] = {"nexus-research-description.element882"},
    ["atomacer"] = {"nexus-research-description.atomacer"},
    ["matter-stabilization"] = {"nexus-research-description.matter-stabilization"},
    ["omega-components"] = {"nexus-research-description.omega-components"},
    ["fusion-power-mk2"] = {"nexus-research-description.fusion-power-mk2"},
    ["photon-stream-thruster"] = {"nexus-research-description.photon-stream-thruster"},
    ["photon-electronics"] = {"nexus-research-description.photon-electronics"},
    ["antimatter-produktion"] = {"nexus-research-description.antimatter-produktion"},
    ["warp-drive-engine"] = {"nexus-research-description.warp-drive-engine"},
	["omega-module-mk1"] = {"nexus-research-description.omega-module-mk1"},
    ["omega-accumulator-upgrade1"] = {"nexus-research-description.omega-system-upgrade-v2"},
    ["omega-accumulator-upgrade2"] = {"nexus-research-description.omega-system-upgrade-v3"}
}

-------------------------------------------------------------------------------------
-- EVENT-HANDLER
-------------------------------------------------------------------------------------

-- EINZIGER EVENT-HANDLER FÜR FORSCHUNG (Texte + GUI Update)
script.on_event(defines.events.on_research_finished, function (event)
    local research = event.research
	local force = research.force -- Variable für kürzeren Zugriff
    
    -- Anzeige der Texte
    local message = research_description_messages[research.name]
    if message ~= nil then
        for _, player in pairs(force.players) do
            if player.valid and player.connected then
                player.print(message)
            end
        end
    end

    -----------------------------------------------------------------------------------------------------
    -- Prüfen, ob die freischaltende Forschung oder ein Limit-Upgrade gerade fertig wurde
    local is_limit_upgrade, entity_name = logic.is_limit_upgrade(research.name)
    if is_limit_upgrade then
        gui.update_entity_in_force(force, entity_name)
    end
    -----------------------------------------------------------------------------------------------------
    -----------------------------------------------------------------------------------------------------
    -- NEUE LOGIK: Akkumulator Upgrade
    -----------------------------------------------------------------------------------------------------
    -- Beispiel: Wenn die Forschung "omega-accumulator-upgrade1" fertig ist
    -- Upgrade Stufe 2
    if research.name == "omega-accumulator-upgrade1" then
        upgrades.perform_omega_upgrade(force, "omega-accumulator", "omega-accumulator-t2")
    end

    if research.name == "omega-accumulator-upgrade2" then
        upgrades.perform_omega_upgrade(force, "omega-accumulator-t2", "omega-accumulator-t3")
    end


	-----------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------
end)

-- EVENT-HANDLER FÜR BAUEN UND ROBOTERBAUEN
script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)
    local entity = event.entity or event.created_entity 
    if not entity or not entity.valid then return end

    -- LOGIK 1: Das Maschinen-Limit prüfen
    if logic.has_machine_limit(entity.name) then
        local force = entity.force
        local max_allowed = logic.get_machine_limit(force, entity.name)
        local current_count = force.get_entity_count(entity.name)

        if current_count > max_allowed then
            local player = event.player_index and game.players[event.player_index]

            -- only the event on_built_entity has a player defined
            if player and player.valid then
                player.create_local_flying_text{
                    text = {"nexus-mod.floating-machine-limit"},
                    position = entity.position
                }
            else
                force.print({"", "[color=yellow]", {"nexus-mod.chat-machine-limit", {"entity-name." .. entity.name}}, "[/color]"})
            end

            if event.name == defines.events.on_built_entity then
                -- event.consumed_items (LuaInventory) stores the items we have to refund
                local consumed_items = event.consumed_items
                if player and player.valid then
                    -- Place the stack in the player inventory
                    -- Remove transered items from consumed_items inventory
                    local player_inv = player.get_main_inventory()
                    for _, item in pairs(consumed_items.get_contents()) do
                        if player_inv.can_insert(item) then
                            local amount = player_inv.insert(item)
                            item.count = amount
                            consumed_items.remove(item)
                        end
                    end
                end

                if not consumed_items.is_empty() then
                    -- Drop items that couldn't be inserted on the ground
                    entity.surface.spill_inventory{
                        position = entity.position, 
                        inventory = consumed_items,
                        enable_looted  = true,
                        allow_belts = false,
                        force = force
                    }
                end
            elseif  event.name == defines.events.on_robot_built_entity then
                -- event.stack (LuaItemStack) stores  the items we have to refund
                entity.surface.spill_item_stack{
                    position = entity.position, 
                    stack = event.stack,
                    enable_looted  = true,
                    allow_belts = false,
                    force = force
                }
            end
            
            entity.destroy()
            -- No GUI update needed, the number of entities is still the same
            return
        end
        
        gui.update_entity_in_force(force, entity.name, current_count, max_allowed)
    end
    
    -- LOGIK 2: Die unsichtbaren Pumpen platzieren
    if entity.name == "zero-point-energy-engine-core" then 
        local surface = entity.surface
        local position = entity.position
        
        local connections = {
            { relative_pos = {x = 8.0, y = 2.0}, pump_direction = defines.direction.south },
            { relative_pos = {x = -8.0, y = 2.0}, pump_direction = defines.direction.north },
            { relative_pos = {x = 0.0, y = 8.0}, pump_direction = defines.direction.west },
            { relative_pos = {x = 0.0, y = -4.0}, pump_direction = defines.direction.east }
        }

        for _, connection in pairs(connections) do
            surface.create_entity({
                name = "invisible-throughput-limiter-pump",
                position = {x = position.x + connection.relative_pos.x, y = position.y + connection.relative_pos.y},
                force = entity.force,
                direction = connection.pump_direction
            })
        end
    end
end)

-- Event: Wenn abgerissen oder zerstört wird
script.on_event({
    defines.events.on_player_mined_entity,
    defines.events.on_robot_mined_entity,
    defines.events.on_entity_died,
    defines.events.script_raised_destroy
}, function(event)
    local entity = event.entity
    if not entity or not entity.valid then return end

    local force = entity.force
    local entity_name = entity.name

    -- Logik für die unsichtbaren Pumpen
    if entity_name == "zero-point-energy-engine-core" then
        local surface = entity.surface
        local position = entity.position 
        local offsets = {{x=8, y=2}, {x=-8, y=2}, {x=0, y=8}, {x=0, y=-4}}

        for _, off in pairs(offsets) do
            local found = surface.find_entities_filtered({
                position = {x = position.x + off.x, y = position.y + off.y},
                radius = 0.5,
                name = "invisible-throughput-limiter-pump"
            })
            for _, pump in pairs(found) do
                if pump.valid then pump.destroy() end
            end
        end
    end

    -- Falls eine limitierte Maschine abgebaut wurde, GUI im NÄCHSTEN TICK aktualisieren
    if logic.has_machine_limit(entity_name) then
        -- Wir nutzen on_nth_tick für den exakt nächsten Tick, damit die Engine die Entity-Zahl bereits reduziert hat
        local tick_to_run = event.tick + 1
        script.on_nth_tick(tick_to_run, function(nth_event)
            gui.update_entity_in_force(force, entity_name)
            script.on_nth_tick(tick_to_run, nil) -- Handler sofort wieder entfernen
        end)
    end
end)
