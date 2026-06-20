--logic.lua


local logic = {}

-- Hier kannst du einfach neue Maschinen hinzufügen
logic.machine_configs = {
    ["zero-point-energy-engine-core"] = {
        base_tech = "zero-point-energy-engine-core",
        base_limit = 1,
        tech_prefix = "zpe-core-limit-", -- Erwartet zpe-limit-1, zpe-limit-2...
        stages = 3,
        label = {"entity-name.zero-point-energy-engine-core"}
    }--[[,
    ["zero-point-energy-engine-colling-unit-down"] = {
        base_limit = 1,
        tech_prefix = "zpe-core-limit-",
        stages = 5,
       label = "Fusion-Reaktoren"
    }--]]
}

function logic.is_limit_upgrade(research_name)
    for entity_name, conf in pairs(logic.machine_configs) do
        if research_name == conf.base_tech or 
           string.find(research_name, conf.tech_prefix, 1, true) ~= nil then
            return true, entity_name
        end
    end
    return false, nil
end

function logic.has_machine_limit(entity_name)
    return logic.machine_configs[entity_name] ~= nil
end

function logic.get_machine_limit(force, entity_name)
    local config = logic.machine_configs[entity_name]
    if not config then return nil end -- Kein Limit für andere Maschinen

    local base_tech = force.technologies[config.base_tech]
    if not base_tech or not base_tech.researched then
        return 0 -- No machines allowed if base tech not researched
    end

    local limit = config.base_limit
    for i = 1, config.stages do
        local tech = force.technologies[config.tech_prefix .. i]
        if tech and tech.researched then
            limit = limit + 1
        else
            -- Either the technology doesn't exist or it's not researched => we dont need to check the stages after
            break
        end
    end
    return limit
end

function logic.get_all_machine_limits(force)
    local limits = {}

    -- Compute limits for all machines with limits
    for entity_name, _ in pairs(logic.machine_configs) do
        limits[entity_name].cur = force.get_entity_count(entity_name)
        limits[entity_name].max = logic.get_machine_limit(force, entity_name)
    end 

    return limits
end

return logic