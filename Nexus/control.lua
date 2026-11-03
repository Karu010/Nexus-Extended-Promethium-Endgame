-- control.lua (Endgültige Version mit Korrigierter Abbau-Logik)

local upgrades = require("__Nexus__.scripts.accumulator_upgrades")
local logic = require("__Nexus__.scripts.logic")
local gui = require("__Nexus__.scripts.gui")
local zero_point_core = require("__Nexus__.scripts.zero_point_core")
local warp_drive = require("__Nexus__.scripts.warp_drive")

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

script.on_event(defines.events.on_player_cursor_stack_changed, function (event)
    gui.update_limit_frame_visibility(game.get_player(event.player_index))
end)

script.on_event(defines.events.on_runtime_mod_setting_changed, function (event)
    if event.player_index and gui.is_limit_frame_setting(event.setting) then
        gui.update_limit_frame_visibility(game.get_player(event.player_index))
    end
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

    zero_point_core.refresh_all()
    warp_drive.refresh_all()

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
    
    -- LOGIK 2: Die unsichtbaren Pumpen platzieren (pumps of the core's quality)
    if entity.name == "zero-point-energy-engine-core" then
        zero_point_core.place_pumps(entity)
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
        zero_point_core.remove_pumps(entity)
    end

    -- The limit GUI is updated at once. The entity still exists during these events, so it is left out of the count.
    -- A one-shot script.on_nth_tick for the next tick was registered here before: it is lost on save and load, a second
    -- removal in the same tick replaces it, and a client that joins in between does not have it (a desync).
    if logic.has_machine_limit(entity_name) then
        gui.update_entity_in_force(force, entity_name, math.max(0, force.get_entity_count(entity_name) - 1))
    end
end)

-- WARP DRIVE: the engines of a platform work only on the way to or from the Oort cloud and Sol (scripts/warp_drive.lua)
script.on_event(defines.events.on_space_platform_changed_state, function(event)
    warp_drive.update_platform(event.platform)
end)

script.on_event(defines.events.on_space_platform_built_entity, function(event)
    local engine = event.entity
    if engine.valid then
        warp_drive.update_platform(engine.surface.platform)
    end
end, {{filter = "name", name = "warp-drive-engine"}})
