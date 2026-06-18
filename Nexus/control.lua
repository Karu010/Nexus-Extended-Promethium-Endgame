-- control.lua (Endgültige Version mit Korrigierter Abbau-Logik)

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
    show_nexus_welcome_message(game.get_player(event.player_index))
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
end)

local logic = require("__Nexus__.scripts.logic")
local upgrades = require("__Nexus__.scripts.accumulator_upgrades") -- Accumulator Upgrade Script

local descriptions = {
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
-- HILFSFUNKTIONEN
-------------------------------------------------------------------------------------

-- Hilfsfunktion: GUI für einen Spieler aktualisieren
local function update_limit_gui(player)
    if not player or not player.valid then return end
-------------------------------------------------------------------------------------
	-- NAME DEINER FORSCHUNG HIER ANPASSEN
    local tech_name = "zero-point-energy-engine-core" 
    local tech = player.force.technologies[tech_name]
	
    local top_gui = player.gui.top
    local outer_frame = top_gui["nexus_limit_frame"]
    
	-- Falls nicht erforscht: GUI löschen (falls vorhanden) und abbrechen
    if not (tech and tech.researched) then
        if outer_frame then outer_frame.destroy() end
        return
    end
-------------------------------------------------------------------------------------------
    if not outer_frame then
        outer_frame = top_gui.add{
            type = "frame",
            name = "nexus_limit_frame",
            direction = "vertical",
            style = "frame" 
        }
    end

    outer_frame.clear()

    for entity_name, config in pairs(logic.machine_configs) do
        local force = player.force
        local max_allowed = logic.get_machine_limit(force, entity_name)
        local current_count = force.get_entity_count(entity_name)

        local row = outer_frame.add{
            type = "flow", 
            direction = "horizontal"
        }
        
        row.add{
            type = "sprite",
            sprite = "item/" .. entity_name,
        }
        
        local label = row.add{
            type = "label",
            caption = {"", " ", config.label, ": ", current_count, " / ", max_allowed},
            style = "label"
        }
        
        if current_count >= max_allowed then
            label.style.font_color = {1, 0.3, 0.3}
        else
            label.style.font_color = {1, 1, 1}
        end
    end
end

-- Hilfsfunktion: GUI für alle Spieler eines Teams aktualisieren
local function update_all_in_force(force)
    if not force or not force.valid then return end
    for _, player in pairs(force.players) do
        update_limit_gui(player)
    end
end

-------------------------------------------------------------------------------------
-- EVENT-HANDLER
-------------------------------------------------------------------------------------

-- EINZIGER EVENT-HANDLER FÜR FORSCHUNG (Texte + GUI Update)
script.on_event(defines.events.on_research_finished, function (event)
    local research = event.research
	local force = research.force -- Variable für kürzeren Zugriff
    
    -- Anzeige der Texte
    if descriptions[research.name] then
        local message = descriptions[research.name]
        for _, player in pairs(research.force.players) do
            player.print(message)
        end
    end

-----------------------------------------------------------------------------------------------------
-- Prüfen, ob die freischaltende Forschung oder ein Limit-Upgrade gerade fertig wurde
    if research.name == "zero-point-energy-engine-core" or string.find(research.name, "zpe%-core%-limit%-") then
        update_all_in_force(research.force)
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
    if logic.machine_configs[entity.name] then
        local force = entity.force
        local max_allowed = logic.get_machine_limit(force, entity.name)
        local current_count = force.get_entity_count(entity.name)

        if current_count > max_allowed then
            if event.player_index then
                game.players[event.player_index].create_local_flying_text{
                    text = {"", "Limit erreicht!"},
                    position = entity.position
                }
            end
            
            entity.surface.create_entity{
                name = "item-on-ground", 
                position = entity.position, 
                stack = {name = entity.name, count = 1}
            }
            entity.destroy()
            
            update_all_in_force(force)
            return
        end
        
        update_all_in_force(force)
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
    if logic.machine_configs[entity_name] then
        -- Wir nutzen on_nth_tick für den exakt nächsten Tick, damit die Engine die Entity-Zahl bereits reduziert hat
        local tick_to_run = event.tick + 1
        script.on_nth_tick(tick_to_run, function(nth_event)
            if force and force.valid then
                update_all_in_force(force)
            end
            script.on_nth_tick(tick_to_run, nil) -- Handler sofort wieder entfernen
        end)
    end
end)
