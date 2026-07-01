-- stabilizer.lua
-- This file handles the stabilizer overclocking system independently

local Stabilizer = {}

-- 1. Initialize data storage safely
function Stabilizer.init_storage()
    storage.stabilizer_system = storage.stabilizer_system or {}
    storage.stabilizer_system.machines = storage.stabilizer_system.machines or {}
    storage.stabilizer_system.global_tier = storage.stabilizer_system.global_tier or 1
end

-- 2. Clean up dead entities from the vanilla list
local function clean_invalid_assemblers()
    if not storage.assemblers then return end
    for i = #storage.assemblers, 1, -1 do
        local ent = storage.assemblers[i]
        if not (ent and ent.valid) then
            table.remove(storage.assemblers, i)
        end
    end
end

-- 3. The safe morphing logic for all machines (Manually transfer states)
function Stabilizer.safe_morph_all_stabilizers(new_tier)
    Stabilizer.init_storage()
    
    local old_ids = {}
    local neue_maschinen_erstellt = {}

    for old_id, data in pairs(storage.stabilizer_system.machines) do
        local old_entity = data.entity
        if old_entity and old_entity.valid then
            table.insert(old_ids, old_id)

            local surface = old_entity.surface
            local position = old_entity.position
            local direction = old_entity.direction
            local force = old_entity.force
            
            -- Save crucial states from the old machine before destruction
            local current_recipe = old_entity.get_recipe()
            local progress = old_entity.crafting_progress
            
----------------------------------------------------------------------------------------------------
            -- 1. Jetzt darf die alte Entity sicher zerstört werden!
            old_entity.destroy()

            -- 2. Spawn der neuen Tier-Maschine...
            local new_entity = surface.create_entity{
                name = "shield-stabilizer-" .. new_tier,
                position = position,
                force = force,
                direction = direction,
                raise_built = false,
                spill = false
            }

            if new_entity and new_entity.valid then
                table.insert(neue_maschinen_erstellt, {entity = new_entity, tier = new_tier})
                
                if current_recipe then
                    new_entity.set_recipe(current_recipe.name)
                    new_entity.crafting_progress = progress
                end

                -- Hier kommt der Block von oben hin:
                if storage.assemblers then
                    local replaced_in_list = false
                    for idx, asm in pairs(storage.assemblers) do
                        if asm and (not asm.valid or (asm.position.x == position.x and asm.position.y == position.y)) then
                            storage.assemblers[idx] = new_entity
                            replaced_in_list = true
                            break
                        end
                    end
                    if not replaced_in_list then
                        table.insert(storage.assemblers, new_entity)
                    end
                end
            end
----------------------------------------------------------------------------------------------------
        end
    end


    -- Clear old IDs from our independent system
    for _, id in ipairs(old_ids) do
        storage.stabilizer_system.machines[id] = nil
    end

    -- Register new IDs into our independent system
    for _, m_data in ipairs(neue_maschinen_erstellt) do
        storage.stabilizer_system.machines[m_data.entity.unit_number] = {
            entity = m_data.entity,
            tier = m_data.tier
        }
    end

    clean_invalid_assemblers()
end

-- 4. Handle when a stabilizer is built
function Stabilizer.on_built(ent)
    if not (ent and ent.valid) then return end
    
    Stabilizer.init_storage()

    -- Matches "shield-stabilizer-1" up to "shield-stabilizer-10"
    if string.find(ent.name, "^shield%-stabilizer%-") then
        local target_tier = storage.stabilizer_system.global_tier or 1
        
        -- If the placed entity doesn't match the current slider tier, swap it instantly
        if ent.name ~= "shield-stabilizer-" .. target_tier then
            local surface = ent.surface
            local position = ent.position
            local direction = ent.direction
            local force = ent.force
            
            ent.destroy()
            
            local morphed_ent = surface.create_entity{
                name = "shield-stabilizer-" .. target_tier,
                position = position,
                force = force,
                direction = direction,
                raise_built = false,
                spill = false
            }
            if morphed_ent and morphed_ent.valid then
                ent = morphed_ent
            end
        end

        storage.stabilizer_system.machines[ent.unit_number] = {
            entity = ent,
            tier = target_tier
        }
        return ent
    end
    return nil
end

-- 5. Handle when a stabilizer is destroyed or mined
function Stabilizer.on_destroy(ent)
    if not (ent and ent.valid) then return end
    if storage.stabilizer_system and storage.stabilizer_system.machines then
        if storage.stabilizer_system.machines[ent.unit_number] then
            storage.stabilizer_system.machines[ent.unit_number] = nil
        end
    end
end

return Stabilizer
