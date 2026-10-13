-- control.lua 


local Stabilizer = require("stabilizer")


if settings.startup["nexus-threat-activation"].value then --"MOD SETTING" MOD-ADDON ON/OFF





 -- control.lua

local function load_nexus_config()
    return {
    PLANET_NAME = "nexus",
    MAX_SHIELD = settings.global["nt-max-shield"].value,				-- CHANGE MAXIMUM SHILD ENERGY:
    DRILL_INCREASE_RATE = settings.global["nt-drill-rate"].value,		-- CHANGE DRILL INCREASING INSTABILITY: 0.01 = 1 % alle 100 Sekunden pro Bohrer
    STORM_CHANCE_MULT = settings.global["nt-storm-chance"].value,		-- CHANGE STORM CHANCE:
    SHIELD_REGEN_RATE = settings.global["nt-shield-regen"].value,		-- CHANGE SHIELD REGENERATION AMOUNT:
    SHIELD_PASSIVE_REGEN = settings.global["nt-shield-passive-regen"].value,	-- SHIELD REGENERATES ON ITS OWN OUTSIDE STORMS (OFF BY DEFAULT)

    SHIELD_DRAIN_MULT = settings.global["nt-shield-drain"].value,		-- CHANGE DAMAGE TO THE SHIELD:
    
    BASE_DAMAGE = settings.global["nt-base-damage"].value,				-- CHANGE DAMAGE FROM LIGHTNING:
    DAMAGE_INC_PER_INSTAB = settings.global["nt-damage-inc"].value,		-- CHANGE INCREASED DAMAGE DUE TO INSTABILITY:
    STORM_DURATION_BASE = settings.global["nt-storm-dur-base"].value,	-- CHANGE STORM DURATION BASE:
    STORM_DURATION_MULT = settings.global["nt-storm-dur-mult"].value,	-- CHANGE STORM DURATION MULTIPLIER:
    
    
    RECIPE_BONUS_RATE = settings.global["nt-recipe-bonus"].value,		-- CHANGE SHIELD LOADING SPEED: 10.0 = 10 Schild-Energie pro Sekunde
	DRILL_UPDATE_INTERVAL = settings.global["nt-drill-interval"].value,	-- PERFORMANCE: CALCULATE DRILLS EVERY X TICKS (1-60)

    INSTABILITY_HALF_LIFE = settings.global["nt-instability-half-life"].value * 3600,	-- SECONDS UNTIL INSTABILITY HALVES ON ITS OWN (0 = NO DECAY)
    LIGHTNING_CHANCE_PER_INSTAB = settings.global["nt-lightning-chance"].value,	-- CHANCE (%) OF A LIGHTNING ATTEMPT ADDED PER 1 % OF INSTABILITY
    LIGHTNING_MAX_ATTEMPTS = settings.global["nt-lightning-attempts"].value,	-- MAX LIGHTNING ATTEMPTS PER TICK FROM 50 % INSTABILITY
    
	WILD_LIGHTNING_CHANCE = 15,     -- MAX CHANCE FOR WILD LIGHTNING (0-100)
    WILD_LIGHTNING_COUNT = 5,       -- MAX ATTEMPTS FOR WILD LIGHTNING PER TICK

    SHIELD_STEP_TICKS = 10          -- PERFORMANCE: THE SHIELD IS RECALCULATED EVERY X TICKS, OVER THE STABILIZERS ONLY

   }
end
local CONFIG = load_nexus_config()
local LN2 = 0.6931471805599453 -- math.log(2), for the instability decay

-- NEW: Feature for creating the main button (Secure Sprite Path)
local function create_toggle_button(player)
    if not player.gui.top.nexus_toggle_button then
        player.gui.top.add{
            type = "sprite-button",
            name = "nexus_toggle_button",
            sprite = "nexus-button-sprite", -- inside date.lua on top
            style = "mod_gui_button",
            tooltip = {"nexus-mod.planet-status"}
        }
    end
end




script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
    CONFIG = load_nexus_config()
end)

-- NEW: This feature scans the planet (OPTIMIZED FOR MEGABASES!)
local function rebuild_entity_lists()
    local surface = game.get_surface(CONFIG.PLANET_NAME)
    -- The shield step reads the stabilizers from their own list; this leaves it empty when there is no surface yet
    Stabilizer.rescan(surface)
    if not (surface and surface.valid) then return end

    storage.drills = {}
    storage.assemblers = {}
    storage.assemblers_dirty = nil -- the fresh list holds no dead entries
    storage.combinators = {}
    storage.lightning_targets = {}

    local all_entities = surface.find_entities_filtered{
        force = "player",
        type = {
            "mining-drill", 
            "assembling-machine", 
            "constant-combinator", 
            "radar", 
            "electric-pole", 
            "solar-panel", 
            "accumulator", 
            "lab"
        }
    }

    for _, ent in pairs(all_entities) do
        if ent.valid then
            local e_type = ent.type
            if e_type == "mining-drill" then 
                table.insert(storage.drills, ent)
            elseif e_type == "assembling-machine" then 
                table.insert(storage.assemblers, ent)
            elseif ent.name == "constant-combinator" then 
                table.insert(storage.combinators, ent)
            end

            local target_types = {["radar"]=true, ["electric-pole"]=true, ["solar-panel"]=true, ["accumulator"]=true, ["lab"]=true}
            if target_types[e_type] then
                table.insert(storage.lightning_targets, ent)
            end
        end
    end
end

-- This feature adds entities to our lists ( storage )
local function on_entity_created(event)
    local ent = event.entity or event.created_entity
    if not (ent and ent.valid) then return end
    
    -- ========================================================================
    -- FIX: Registers both the base name AND all numbered tiers!
    -- Supports "shield-stabilizer" and "shield-stabilizer-1" up to "-10"
    -- ========================================================================
    if ent.name == "shield-stabilizer" or string.find(ent.name, "^shield%-stabilizer") then
        local registrierte_entity = Stabilizer.on_built(ent)
        if registrierte_entity then 
            -- If we are on the Nexus planet, we also add it to your main assembler list
            if registrierte_entity.surface.name == CONFIG.PLANET_NAME then
                storage.assemblers = storage.assemblers or {}
                table.insert(storage.assemblers, registrierte_entity)
                -- The shield step looks only at this list of stabilizers (also the morphed replacement)
                Stabilizer.track(registrierte_entity)
            end
            return -- Stop here for the stabilizer so it doesn't get double-processed below
        end
    end
    -- ========================================================================

    if ent.surface.name == CONFIG.PLANET_NAME then
        storage.drills = storage.drills or {}
        storage.assemblers = storage.assemblers or {}
        storage.combinators = storage.combinators or {}
        storage.lightning_targets = storage.lightning_targets or {}

        if ent.type == "mining-drill" then 
            table.insert(storage.drills, ent)
        elseif ent.type == "assembling-machine" then 
            table.insert(storage.assemblers, ent)
        elseif ent.name == "constant-combinator" then 
            table.insert(storage.combinators, ent) 

            -- NEW: Register for object destroyed to handle cleanups later
            local control = ent.get_control_behavior()
            if control then
                local has_nexus_signal = false
                for _, section in pairs(control.sections) do
                    for _, slot in pairs(section.filters) do
                        if slot.value and (slot.value.name == "nexus_charge" or slot.value.name == "shield_energy") then
                            has_nexus_signal = true
                            break
                        end
                    end
                    if has_nexus_signal then break end
                end

                if has_nexus_signal then
                    storage.nexus_connected_combinators = storage.nexus_connected_combinators or {}
                    if not storage.nexus_connected_combinators[ent.unit_number] then
                        script.register_on_object_destroyed(ent)
                        storage.nexus_connected_combinators[ent.unit_number] = ent
                    end
                end
            end
        end
		
        local target_types = {["radar"]=true, ["electric-pole"]=true, ["solar-panel"]=true, ["accumulator"]=true, ["lab"]=true}
        if target_types[ent.type] then
            table.insert(storage.lightning_targets, ent)
        end
    end
end



script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity, defines.events.script_raised_built, defines.events.on_space_platform_built_entity}, on_entity_created)

-- BRIDGE TO STABILIZER FILE: Handle mining and destruction
script.on_event({
    defines.events.on_player_mined_entity,
    defines.events.on_robot_mined_entity,
    defines.events.on_entity_died,
    defines.events.script_raised_destroy
}, function(event)
    local ent = event.entity
    if ent and ent.valid then
        Stabilizer.on_destroy(ent)

        -- An assembler lost on Nexus leaves a dead anchor of the lightning in storage.assemblers. The entity is
        -- still valid inside this event, so only a flag is raised; prune_assemblers removes the dead anchors in the
        -- next shield step.
        if ent.type == "assembling-machine" and ent.surface.name == CONFIG.PLANET_NAME then
            storage.assemblers_dirty = true
        end
    end
end)


script.on_init(function()
    storage.lightning_targets = {}
    storage.drills = {}
    storage.assemblers = {}
    storage.combinators = {}
    storage.nexus_charge = storage.nexus_charge or 0
    storage.shield_energy = storage.shield_energy or 0
    storage.storm_timer = 0
    storage.gui_enabled = storage.gui_enabled or {}
    
    -- BRIDGE TO STABILIZER FILE: Initialize independent storage
    Stabilizer.init_storage()
    
    rebuild_entity_lists()
    for _, player in pairs(game.players) do
        create_toggle_button(player)
    end
end)


script.on_configuration_changed(function()
    rebuild_entity_lists()
    for _, player in pairs(game.players) do
        create_toggle_button(player)
    end
end)

-- NEW: Event handler for button clicks
script.on_event(defines.events.on_gui_click, function(event)
    if event.element.name == "nexus_toggle_button" then
        local player = game.players[event.player_index]
        storage.gui_enabled = storage.gui_enabled or {}
        
        if player.gui.top.nexus_frame then
            player.gui.top.nexus_frame.destroy()
            storage.gui_enabled[player.index] = false
        else
            storage.gui_enabled[player.index] = true
            -- The GUI will be automatically created in the next on_tick
        end
    end
end)

-- SHIELD CALCULATION
-- Runs every SHIELD_STEP_TICKS ticks over storage.stabilizers only, instead of every tick over all
-- assemblers on Nexus: only shield stabilizers can run "nexus-stabilization-process".

-- Shield energy that one stabilizer made during the last step
local function stabilizer_gain(machine, unit_number, step_seconds)
    local status = machine.status
    if status ~= defines.entity_status.working and status ~= defines.entity_status.low_power then
        return 0.0
    end
    local recipe = machine.get_recipe()
    if not (recipe and recipe.name == "nexus-stabilization-process") then
        return 0.0
    end

    -- 1. Crafts done so far as a fraction: finished crafts plus the progress of the running one
    local crafts = machine.products_finished + machine.crafting_progress

    -- 2. The same value from the previous step (stored per machine). It is kept while the machine is paused
    -- (no power): its progress stands still then, so the first step after the pause counts what was made since.
    local last_crafts = storage.stabilizer_crafts[unit_number]
    storage.stabilizer_crafts[unit_number] = crafts
    if not last_crafts then
        return 0.0 -- the first look at a machine only sets this baseline
    end

    -- 3. How far the machine got since the previous step. A craft that completed in between is counted by
    -- products_finished; if that does not count this recipe, the progress bar just wrapped around and the delta
    -- is negative, so the finished craft is added back. (At most one craft completes per step:
    -- crafting_speed / recipe.energy * step_seconds is far below 1.)
    local progress_delta = crafts - last_crafts
    if progress_delta < 0 then
        progress_delta = progress_delta + 1
    end

    -- 4. How far it SHOULD get at 100% power: (crafting_speed / recipe duration) per second
    local expected_progress = machine.crafting_speed / recipe.energy * step_seconds
    if expected_progress <= 0 then
        return 0.0
    end

    -- 5. The continuous power factor: actual progress divided by expected progress, within [0, 1]
    local power_factor = math.max(0.0, math.min(1.0, progress_delta / expected_progress))

    -- CALCULATION: The shield charges continuously!
    -- If the C++ engine throttles the recipe by 40% due to a power shortage, exactly 40% less shield power is generated.
    return CONFIG.RECIPE_BONUS_RATE * machine.crafting_speed * power_factor * step_seconds
end

-- The per-tick loop over all assemblers that this replaces also dropped the destroyed ones from storage.assemblers,
-- the anchor pool 2 of the lightning. Now the removal events (see above) only raise storage.assemblers_dirty, and the
-- next shield step compacts the list once. Without that, after a mass removal a big part of the strike attempts
-- would draw dead anchors and be lost. (A removal that raises no event is still dropped lazily, when a strike draws it.)
local function prune_assemblers()
    storage.assemblers_dirty = nil
    local list = storage.assemblers
    if not list then return end

    local size = #list
    local kept = 0
    for i = 1, size do
        local ent = list[i]
        if ent and ent.valid then
            kept = kept + 1
            list[kept] = ent
        end
    end
    for i = size, kept + 1, -1 do
        list[i] = nil
    end
end

local function update_shield()
    local step_seconds = CONFIG.SHIELD_STEP_TICKS / 60
    local shield = storage.shield_energy or 0

    for unit_number, machine in pairs(storage.stabilizers) do
        if machine.valid then
            shield = shield + stabilizer_gain(machine, unit_number, step_seconds)
        else
            -- Destroyed without an event (script, deleted surface)
            Stabilizer.forget(unit_number)
        end
    end

    -- Passive regeneration (map setting, off by default): outside an active storm (no storm, or only the warning)
    -- the shield also regenerates by "nt-shield-regen" shield energy per second, without stabilizers or power
    if CONFIG.SHIELD_PASSIVE_REGEN and not ((storage.storm_timer or 0) > 0 and not storage.is_warning) then
        shield = shield + CONFIG.SHIELD_REGEN_RATE * step_seconds
    end

    storage.shield_energy = math.min(CONFIG.MAX_SHIELD, shield)
end

script.on_event(defines.events.on_tick, function(event)

    -- A save from before the stabilizer list existed gets its list here. Changing only the script of the same mod
    -- version raises no on_configuration_changed.
    if not storage.stabilizers then
        Stabilizer.rescan(game.get_surface(CONFIG.PLANET_NAME))
    end

    -- BRIDGE TO STABILIZER FILE: Safely morph machines outside the GUI tick
    if storage.stabilizer_system and storage.stabilizer_system.needs_morph then
        storage.stabilizer_system.needs_morph = false
        local target_tier = storage.stabilizer_system.global_tier or 1
        
        -- DEBUG 3: Zeigt an, dass der on_tick den Befehl erhalten hat
        --game.print("DEBUG 3: on_tick hat 'needs_morph' erkannt! Starte Tausch auf Stufe: " .. target_tier)
        
        Stabilizer.safe_morph_all_stabilizers(target_tier)
    end

    local surface = game.get_surface(CONFIG.PLANET_NAME)
    if not surface or not surface.valid then return end


    -- 2. INSTABILITY & LAZY CLEANUP (Drills)
    -- Runs every X ticks based on DRILL_UPDATE_INTERVAL for better performance
    if event.tick % CONFIG.DRILL_UPDATE_INTERVAL == 0 then
        local factor = CONFIG.DRILL_UPDATE_INTERVAL

        -- Instability decays exponentially when the setting "nt-instability-half-life" is above 0:
        -- I <- I * 2^(-dt / half-life), dt in seconds. math.exp instead of ^ because Factorio replaces exp and log
        -- with versions that give the same result on every platform.
        if CONFIG.INSTABILITY_HALF_LIFE > 0 then
            storage.nexus_charge = (storage.nexus_charge or 0) * math.exp(-LN2 * (factor / 60) / CONFIG.INSTABILITY_HALF_LIFE)
        end
        for i = #storage.drills, 1, -1 do
            local d = storage.drills[i]
            if d and d.valid then
                if d.status == defines.entity_status.working then
                    -- We calculate: (Rate / 60 = value per tick) * factor
                    storage.nexus_charge = math.min(100, (storage.nexus_charge or 0) + (CONFIG.DRILL_INCREASE_RATE / 60 * factor))
                end
            else table.remove(storage.drills, i) end
        end
    end

    -- 2.1 SHIELD CALCULATION (Stabilizers)
    -- Every SHIELD_STEP_TICKS ticks over the stabilizers only, instead of every tick over all assemblers (see update_shield)
    if event.tick % CONFIG.SHIELD_STEP_TICKS == 0 then
        update_shield()
        if storage.assemblers_dirty then prune_assemblers() end
    end









    -- 3. STORM LOGIC (EXACT SECONDS)
    if event.tick % 60 == 0 then
        if storage.storm_timer > 0 then
            -- We subtract 1 only once per second (every 60 ticks)
            storage.storm_timer = storage.storm_timer - 1
            
            -- Transition from warning to active steering
            if storage.storm_timer <= 0 and storage.is_warning then
                storage.is_warning = false 
                storage.storm_timer = CONFIG.STORM_DURATION_BASE + math.ceil((storage.nexus_charge or 0) * CONFIG.STORM_DURATION_MULT)
                surface.print("CRITICAL: Nexus-Storm impact imminent!", {1, 0, 0})
            end
        else
            -- New storm check (only if no storm is active)
            local instability_val = storage.nexus_charge or 0
            if math.random(1, 1000) <= (instability_val * CONFIG.STORM_CHANCE_MULT) then
                local tech = game.forces["player"].technologies["nexus-storm-prediction"]
                if tech and tech.researched then
                    storage.storm_timer = math.random(120, 600) 
                    storage.is_warning = true 
                    surface.print({"nexus-mod.msg-detected", storage.storm_timer}, {1, 0.8, 0})
                else
                    storage.storm_timer = CONFIG.STORM_DURATION_BASE + math.ceil(instability_val * CONFIG.STORM_DURATION_MULT)
                    storage.is_warning = false 
                    surface.print({"nexus-mod.warning-event", CONFIG.PLANET_NAME}, {1, 0.2, 0.2})
                end
            end
        end
    end

    -- 4. GUI UPDATE & SIGNALS (Only every 60 ticks for performance)
    if event.tick % 60 == 0 then
        -- GUI Update for All Players
        local instability = storage.nexus_charge or 0
        local shield = storage.shield_energy or 0
        local storm_t = storage.storm_timer or 0

        -- ========================================================================
        -- HIGH-PERFORMANCE: Update only registered combinators (CRITICAL BUGFIX HERE!)
        -- ========================================================================
        if storage.nexus_connected_combinators then
            for id, comb in pairs(storage.nexus_connected_combinators) do
                -- CRITICAL ENGINE FIX: Strictly verify that it is actually a valid constant-combinator
                -- to prevent Factorio from throwing random progressbar pointer errors during fast_replace!
                if comb and comb.valid and comb.type == "constant-combinator" then
                    local control = comb.get_control_behavior()
                    if control then
                        -- Loop through sections and slots to update our specific signals
                        for _, section in pairs(control.sections) do
                            for slot_index, slot in pairs(section.filters) do
                                if slot.value then
                                    if slot.value.name == "nexus_charge" then
                                        section.set_slot(slot_index, {
                                            value = slot.value,
                                            count = math.floor(instability),
                                            min = math.floor(instability),
                                            max = math.floor(instability)
                                        })
                                    elseif slot.value.name == "shield_energy" then
                                        section.set_slot(slot_index, {
                                            value = slot.value,
                                            count = math.floor(shield),
                                            min = math.floor(shield),
                                            max = math.floor(shield)
                                        })
                                    end
                                end
                            end
                        end
                    end
                else
                    -- Remove any invalid or corrupted entities safely
                    storage.nexus_connected_combinators[id] = nil
                end
            end
        end
		
		
        -- ========================================================================

        -- We retrieve the current global tier state from memory
        local current_global_tier = 1
	if storage.stabilizer_system and storage.stabilizer_system.global_tier then
		current_global_tier = storage.stabilizer_system.global_tier
	end

        for _, p in pairs(game.players) do
            if p.valid then
                create_toggle_button(p) -- Ensure the main button exists

                -- Show only if player is on the planet AND has the GUI toggled open
                if p.surface and p.surface.name == CONFIG.PLANET_NAME and storage.gui_enabled and storage.gui_enabled[p.index] then
                    
                    local gui = p.gui.top.nexus_frame
                    
                    -- Savegame check: If old verbugged elements are cached, wipe it once
                    if gui and (not gui.row1 or not gui.pbar_instability) then
                        gui.destroy()
                        gui = nil
                    end
                    
                    -- BUILD THE GUI ONLY ONCE (No lag!)
                    if not gui then
                        gui = p.gui.top.add{type="frame", name="nexus_frame", direction="vertical"}
                        
                        -- ROW 1: Instability Text
                        local r1 = gui.add{type="flow", name="row1", direction="horizontal"}
                        local lbl_instab = r1.add{type="label", caption={"nexus-mod.instability"}}
                        lbl_instab.style.font = "default-bold"
                        lbl_instab.style.minimal_width = 120 -- Fixed size stops GUI from shaking!
                        
                        r1.add{type="empty-widget"}.style.horizontally_stretchable = true
                        r1.add{type="label", name="lbl_instab_val"}
                        
                        -- Progressbar sits cleanly below the text now
                        local bar_i = gui.add{type="progressbar", name="pbar_instability"}
                        bar_i.style.minimal_width = 240
                        bar_i.style.color = {1, 0, 0}
                        
                        -- ROW 2: Shield Energy Text
                        local r2 = gui.add{type="flow", name="row2", direction="horizontal"}
                        local lbl_shield = r2.add{type="label", caption={"nexus-mod.shield"}}
                        lbl_shield.style.font = "default-bold"
                        lbl_shield.style.minimal_width = 120 -- Fixed size stops GUI from shaking!
                        
                        r2.add{type="empty-widget"}.style.horizontally_stretchable = true
                        r2.add{type="label", name="lbl_shield_val"}
                        
                        -- Progressbar sits cleanly below the text now
                        local bar_s = gui.add{type="progressbar", name="pbar_shield_energy"}
                        bar_s.style.minimal_width = 240
                        bar_s.style.color = {0, 0.5, 1}
                        
                        gui.add{type="line", name="line1", direction="horizontal"}
                        gui.add{type="label", name="lbl_status"}

                    -- STABILIZER SLIDER SECTION
                    gui.add{type="line", name="stabilizer_line", direction="horizontal"}
                    
                    local s_flow = gui.add{type="flow", name="stabilizer_flow", direction="vertical"}
                    local s_row = s_flow.add{type="flow", name="tier_row", direction="horizontal"}
                    

                    local lbl_limit = s_row.add{type="label", caption={"nexus-mod.nexus-mod-stabilizer-limit"}}
                    lbl_limit.style.font = "default-bold"
                    lbl_limit.style.minimal_width = 120
                    
                    s_row.add{type="label", name="lbl_stab_tier_val"}

                        
                        local slider = s_flow.add{
                            type = "slider",
                            name = "stabilizer_global_slider",
                            minimum_value = 1,
                            maximum_value = 10,
                            value = current_global_tier,
                            value_step = 1
                        }
                        slider.style.minimal_width = 240
                    end

                    -- INDEPENDENT UPDATE PATHS (No more layout pushing!)
                    if gui.pbar_instability then
                        gui.pbar_instability.value = instability / 100
                    end
                    if gui.row1 and gui.row1.lbl_instab_val then
                        gui.row1.lbl_instab_val.caption = string.format("%.2f%%", instability)
                    end
                    
                    if gui.pbar_shield_energy then
                        gui.pbar_shield_energy.value = shield / CONFIG.MAX_SHIELD
                    end
                    if gui.row2 and gui.row2.lbl_shield_val then
                        gui.row2.lbl_shield_val.caption = math.floor(shield) .. " / " .. CONFIG.MAX_SHIELD
                    end

                    -- Status Text Logic
                    if gui.lbl_status then
                        if storm_t > 0 then
                            if storage.is_warning then
                                gui.lbl_status.caption = {"nexus-mod.status-warning", storm_t}
                                gui.lbl_status.style.font_color = {1, 0.8, 0.2}
                            else
                                gui.lbl_status.caption = {"nexus-mod.status-active", storm_t}
                                gui.lbl_status.style.font_color = {1, 0.2, 0.2}
                            end
                        else
                            gui.lbl_status.caption = {"nexus-mod.status-stable"}
                            gui.lbl_status.style.font_color = {0.2, 1, 0.2}
                        end
                    end

                    -- Live-Update for stabilizer text
                    if gui.stabilizer_flow and gui.stabilizer_flow.tier_row and gui.stabilizer_flow.tier_row.lbl_stab_tier_val then
                        gui.stabilizer_flow.tier_row.lbl_stab_tier_val.caption = (current_global_tier * 10) .. "% (" .. (current_global_tier * 50) .. " GW)"
                    end

                else
                    if p.gui.top.nexus_frame then p.gui.top.nexus_frame.destroy() end
                end
            end
        end
    end










    -- 5. BLITZ LOGIC (ORIGINAL MASS + PERFORMANCE FIX)
    if storage.storm_timer > 0 and not storage.is_warning then
        local instability = storage.nexus_charge or 0

        -- The storm multiplier (set by other mods through the remote interface "nexus-threat" below) scales only
        -- the CHANCES of lightning, the regular and the wild ones; not the damage, the storm duration or the instability.
        local storm_multiplier = storage.storm_multiplier or 1.0
        
        -- PERFORMANCE: We calculate the number of lightning strikes for this tick
        -- From 50% instability, we attempt up to "nt-lightning-attempts" (default 3) lightning strikes per tick (180 per second!)
        local blitz_attempts = 1
        if instability >= 50 then 
            blitz_attempts = math.random(1, CONFIG.LIGHTNING_MAX_ATTEMPTS)
        end

        for a = 1, blitz_attempts do
            -- GLOBAL CHECK
            -- The roll is continuous so that a multiplier below 1 is not rounded away; with the whole-number chance
            -- floor(5 + k * instability), k = "nt-lightning-chance" (default 1), it gives exactly the old
            -- math.random(1, 100) <= 5 + instability at k = 1 and multiplier 1.
            if math.random() * 100 < math.floor(5 + CONFIG.LIGHTNING_CHANCE_PER_INSTAB * instability) * storm_multiplier then
                -- PERFORMANCE:
                local pool_selector = math.random(1, 3)
                local current_pool = storage.drills
                if pool_selector == 2 then current_pool = storage.assemblers
                elseif pool_selector == 3 then current_pool = storage.lightning_targets end
                
                if current_pool and #current_pool > 0 then
                    local rand_idx = math.random(#current_pool)
                    local anchor = current_pool[rand_idx]
                    
                    if anchor and anchor.valid then
                        local strike_pos = {
                            x = anchor.position.x + math.random(-15, 15), 
                            y = anchor.position.y + math.random(-15, 15)
                        }
                        
                        surface.create_entity{name = "lightning", position = strike_pos}
                        storage.regular_strikes = (storage.regular_strikes or 0) + 1
                        
                        -- DAMAGE LOGIC WITH IMPACT
                        local damage_amount = CONFIG.BASE_DAMAGE + (instability * CONFIG.DAMAGE_INC_PER_INSTAB)
                        local current_shield = storage.shield_energy or 0

                        if current_shield > (damage_amount * CONFIG.SHIELD_DRAIN_MULT) then
                            -- The shield is strong enough to withstand this blow
                            storage.shield_energy = current_shield - (damage_amount * CONFIG.SHIELD_DRAIN_MULT)
                        else
                            -- The shield is no longer enough! 
                            -- Set the shield to 0
                            storage.shield_energy = 0
                            
                            -- 2. Calculate residual damage (penetration)
                            local blocked_damage = current_shield / CONFIG.SHIELD_DRAIN_MULT
                            local leaked_damage = math.max(0, damage_amount - blocked_damage)
                            
                            -- 3. Hit nearby buildings (only if there is damage remaining)
                            if leaked_damage > 0 then
                                local targets = surface.find_entities_filtered{position = strike_pos, radius = 3, force = "player"}
                                for _, t in pairs(targets) do
                                    if t.valid and t.health then 
                                        t.damage(leaked_damage, "neutral", "electric") 
                                    end
                                end
                            end
                        end
                    else
                        -- If the anchor was no longer valid (e.g., destroyed), remove it from the list
                        table.remove(current_pool, rand_idx)
                    end
                end
            end
        end

        -- Wild lightning (CONFIGURABLE VERSION)
        local wild_attempts = 1
        if instability >= 50 then 
            wild_attempts = math.random(1, CONFIG.WILD_LIGHTNING_COUNT) 
        end

        for w = 1, wild_attempts do
            local current_chance = (CONFIG.WILD_LIGHTNING_CHANCE / 100) * instability
            if instability < 10 then current_chance = 5 end 

            -- Same continuous roll as above: floor(current_chance) percent at multiplier 1, as before
            if math.random() * 100 < math.floor(current_chance) * storm_multiplier then
                local chunk = surface.get_random_chunk()
                if chunk then
                    surface.create_entity{
                        name = "lightning", 
                        position = {
                            x = chunk.x * 32 + math.random(0, 31), 
                            y = chunk.y * 32 + math.random(0, 31)
                        }
                    }
                    storage.wild_strikes = (storage.wild_strikes or 0) + 1
                end
            end
        end
    end
end)



-- COMMANDS
-- The debug commands below changed the storm and the instability for whoever typed them: they are for admins (and
-- the server console) only.
local function admin_only(handler)
    return function(event)
        local player = event.player_index and game.get_player(event.player_index)
        if player and not player.admin then
            player.print({"nexus-mod.cmd-admin-only"})
            return
        end
        handler(event)
    end
end

commands.add_command("reset_nexus", "Setzt die Nexus-Instabilität auf 0", admin_only(function()
    storage.nexus_charge = 0
    game.print({"nexus-mod.cmd-reset"})
end))

commands.add_command("sturm_start", "Löst sofort ein Energie-Event (Sturm) aus", admin_only(function()
    local instability = storage.nexus_charge or 50
    -- We estimate the duration of the storm
    storage.storm_timer = CONFIG.STORM_DURATION_BASE + math.ceil(instability * CONFIG.STORM_DURATION_MULT)
    
    -- IMPORTANT: We tell the game that the warning is OVER
    storage.is_warning = false 
    
    game.print({"nexus-mod.cmd-storm-manual"}, {1, 0.2, 0.2})
end))


commands.add_command("sturm_start_timer", "Löst sofort ein Energie-Event (Sturm) mit Vorwarnung aus", admin_only(function()
    -- Simulates the random lead time (120–600 seconds)
    storage.storm_timer = math.random(120, 600) 
    storage.is_warning = true 
    
    -- Displays the message in the chat (uses locale)
    game.print({"nexus-mod.msg-detected", storage.storm_timer}, {1, 0.8, 0})
end))



commands.add_command("sturm_stop", "Beendet den aktuellen Sturm sofort", admin_only(function()
    storage.storm_timer = 0
    game.print({"nexus-mod.cmd-storm-stop"}, {0, 1, 0})
end))

commands.add_command("set_nexus", "Set instability (0-100)", admin_only(function(event)
    local eingabe = tonumber(event.parameter)
    if not eingabe or eingabe < 0 or eingabe > 100 then
        game.print("Error: Invalid value. Please enter a number between 0 and 100.")
        return
    end
    storage.nexus_charge = eingabe
    game.print("Nexus-instability set to " .. storage.nexus_charge .. "%")
end))


commands.add_command("check_storage", "Zeigt die Anzahl der gespeicherten Objekte", admin_only(function()
    local d = #storage.drills
    local a = #storage.assemblers
    local z = #storage.lightning_targets
    game.print("Speicher-Check: Bohrer: " .. d .. " | Maschinen: " .. a .. " | Blitz-Ziele: " .. z)
end))

-- Konsolen-Befehl: /nexus-refresh
commands.add_command("nexus-refresh", "Initialisiert alle Listen der Nexus-Mod neu", admin_only(function()
    rebuild_entity_lists()
    game.print("Nexus-Listen wurden erfolgreich neu geladen!")
end))


-- REMOTE INTERFACE "nexus-threat", for other mods (for example weaker storms after a boss falls)
remote.add_interface("nexus-threat", {
    -- Scales only the CHANCES of lightning, regular and wild; not the damage, the storm duration or the
    -- instability. Default 1.0.
    set_storm_multiplier = function(multiplier)
        if type(multiplier) ~= "number" or not (multiplier >= 0 and multiplier < math.huge) then
            error("nexus-threat.set_storm_multiplier: expected a finite number >= 0, got " .. tostring(multiplier))
        end
        storage.storm_multiplier = multiplier
    end,

    -- Adds shield energy (a negative amount takes it away), kept between 0 and the maximum shield. Returns the new
    -- shield energy.
    add_shield = function(amount)
        if type(amount) ~= "number" or not (amount > -math.huge and amount < math.huge) then
            error("nexus-threat.add_shield: expected a finite number, got " .. tostring(amount))
        end
        local shield = math.max(0, math.min(CONFIG.MAX_SHIELD, (storage.shield_energy or 0) + amount))
        storage.shield_energy = shield
        return shield
    end,

    -- Snapshot of the threat state. Reads only, so it is safe to call at any time.
    get_state = function()
        local stabilizers = 0
        local machines = storage.stabilizer_system and storage.stabilizer_system.machines or {}
        for _, data in pairs(machines) do
            if data.entity and data.entity.valid then stabilizers = stabilizers + 1 end
        end

        return {
            instability = storage.nexus_charge or 0,
            shield = storage.shield_energy or 0,
            max_shield = CONFIG.MAX_SHIELD,
            storm_active = (storage.storm_timer or 0) > 0 and not storage.is_warning,
            storm_warning = (storage.storm_timer or 0) > 0 and storage.is_warning == true,
            storm_timer = storage.storm_timer or 0,        -- seconds
            storm_multiplier = storage.storm_multiplier or 1.0,
            stabilizers = stabilizers,                     -- stabilizers known to the stabilizer system
            -- counters since the start of the game
            regular_strikes = storage.regular_strikes or 0,
            wild_strikes = storage.wild_strikes or 0
        }
    end
})







---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------






-- Event: Fires when a player closes any GUI (including combinators)
script.on_event(defines.events.on_gui_closed, function(event)
    -- Check if the closed GUI was an entity and if it is a constant combinator
    if event.entity and event.entity.valid and event.entity.name == "constant-combinator" then
        local entity = event.entity
        local control = entity.get_control_behavior()
        if not control then return end

        -- Check all sections and slots to see if our custom signals are being used
        local has_nexus_signal = false
        for _, section in pairs(control.sections) do
            for _, slot in pairs(section.filters) do
                if slot.value and (slot.value.name == "nexus_charge" or slot.value.name == "shield_energy") then
                    has_nexus_signal = true
                    break
                end
            end
            if has_nexus_signal then break end
        end

        -- Ensure the storage table exists
        storage.nexus_connected_combinators = storage.nexus_connected_combinators or {}

        if has_nexus_signal then
            -- Only register if it's not already in our list
            if not storage.nexus_connected_combinators[entity.unit_number] then
                -- Register the entity for the global object destroyed event
                script.register_on_object_destroyed(entity)
                -- Add the combinator to our high-performance update list using its unique ID
                storage.nexus_connected_combinators[entity.unit_number] = entity
            end
        else
            -- Remove it if the player cleared the custom signals
            storage.nexus_connected_combinators[entity.unit_number] = nil
        end
    end
end)

-- Event: Fires when any registered entity is destroyed, mined, or deleted
script.on_event(defines.events.on_object_destroyed, function(event)
    if storage.nexus_connected_combinators then
        -- Find the entity by its unit_number (stored in event.useful_id)
        local unit_number = event.useful_id
        if unit_number and storage.nexus_connected_combinators[unit_number] then
            -- Clean it up from our storage list immediately
            storage.nexus_connected_combinators[unit_number] = nil
        end
    end
end)




---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------




-- EVENT HANDLER FOR THE STABILIZER SLIDER
script.on_event(defines.events.on_gui_value_changed, function(event)
    local element = event.element
    if not (element and element.valid) then return end

    -- DEBUG 1: Zeigt im Chat an, welches GUI-Element Factorio gerade registriert hat
    --game.print("DEBUG 1: GUI Element geändert! Name: " .. tostring(element.name) .. " | Typ: " .. tostring(element.type))

    if element.name == "stabilizer_global_slider" and element.type == "slider" then
        local neue_stufe = math.floor(element.slider_value)
        
        storage.stabilizer_system = storage.stabilizer_system or {}
        local alte_stufe = storage.stabilizer_system.global_tier or 1

        -- DEBUG 2: Zeigt an, welche Stufen das Event berechnet hat
        --game.print("DEBUG 2: Slider bewegt! Alte Stufe: " .. alte_stufe .. " -> Neue Stufe: " .. neue_stufe)

        if neue_stufe ~= alte_stufe then
            storage.stabilizer_system.global_tier = neue_stufe
            storage.stabilizer_system.needs_morph = true
        end
    end
end)





---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------


--end --"MOD SETTING" MOD-ADDON ON/OFF "END"






else
    -- This section is executed when the setting from the mod is set to OFF
    script.on_event(defines.events.on_tick, function(event)
        -- clean up every 60 ticks
        for _, p in pairs(game.players) do
            if p.valid then
                if p.gui.top.nexus_frame then p.gui.top.nexus_frame.destroy() end
                if p.gui.top.nexus_toggle_button then p.gui.top.nexus_toggle_button.destroy() end
            end
        end
        -- disable the event handler for this game state.
        script.on_event(defines.events.on_tick, nil)
    end)
end -- MOD SETTING" MOD-ADDON ON/OFF "END"