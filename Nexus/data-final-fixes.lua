--data-final-fixes.lua(mod integration)

--Limiter pumps of the zero-point energy engine core for every quality (after other mods added theirs)
require("prototypes.entity.zero_point_energy_engine_core.pump_qualities")

--The zero-point energy engine needs gravity: control.lua applies its limit and places its limiter pumps on
--on_built_entity and on_robot_built_entity, and a space platform raises neither (after other mods changed the entities)
for _, entity in pairs({
    data.raw["generator"]["zero-point-energy-engine-core"],
    data.raw["assembling-machine"]["zero-point-energy-engine-injector-up"],
    data.raw["assembling-machine"]["zero-point-energy-engine-injector-down"],
    data.raw["assembling-machine"]["zero-point-energy-engine-injector-left"],
    data.raw["assembling-machine"]["zero-point-energy-engine-injector-right"],
}) do
    entity.surface_conditions = entity.surface_conditions or {}
    table.insert(entity.surface_conditions, {property = "gravity", min = 0.1})
end








--Any Science mods compatibility
data.raw["lab"]["omega-lab"]["inputs"] = {} -- Clear all added sciences-packs
-- 2.1: vanilla science packs became plain items, so packs are looked up in both tables
local function science_packs()
    local packs = {}
    for _, type_name in pairs({"tool", "item"}) do
        for _, pack in pairs(data.raw[type_name] or {}) do packs[#packs + 1] = pack end
    end
    return packs
end

for _, tool in pairs(science_packs()) do
    if tool["subgroup"] == "science-pack" then
        table.insert(data.raw["lab"]["omega-lab"]["inputs"], tool["name"])
    end
end
------------------------------------------------------------------------------------------------------------
for _, tool in pairs(science_packs()) do
    if tool["subgroup"] == "omega-science-pack" then
        table.insert(data.raw["lab"]["omega-lab"]["inputs"], tool["name"])
    end
end

--Krastorio2-spaced-out compatibility
if mods["Krastorio2-spaced-out"] then
    --require("__Nexus__.compatibility.Krastorio2-spaced-out.omega_lab_tech_card_fix")
	require("__Nexus__.compatibility.Krastorio2-spaced-out.technology_fix")
	--require("__Nexus__.compatibility.Krastorio2-spaced-out.remove_tech")
	require("__Nexus__.compatibility.Krastorio2-spaced-out.entity_update")
end

--[[
--atan-nuclear-science compatibility
if mods["atan-nuclear-science"] then
    --require("__Nexus__.compatibility.atan-nuclear-science.omega_lab_science_fix")
	data.raw["lab"]["omega-lab"].inputs =
    {
	  "automation-science-pack",
      "logistic-science-pack",
      "military-science-pack",
      "chemical-science-pack",
	  "nuclear-science-pack",
      "production-science-pack",
      "utility-science-pack",
      "space-science-pack",
      "metallurgic-science-pack",
      "agricultural-science-pack",
      "electromagnetic-science-pack",
      "cryogenic-science-pack",
      "promethium-science-pack",
	  "antimatter-science-pack",
    }
	    -- Add wood and steam science packs to all labs' inputs except these
end

--]]
--log("Hallo")
--[[
log(serpent.dump(data.raw["lab"]["omega-lab"]))
--atan-nuclear-science compatibility
--if mods["atan-nuclear-science"] then
    --require("__Nexus__.compatibility.atan-nuclear-science.omega_lab_science_fix")
	--table.insert(data.raw["lab"]["omega-lab"]["inputs"], "nuclear-science-pack")
	    -- Add wood and steam science packs to all labs' inputs except these
for name ,tool in pairs(data.raw["tool"]) do
		--log(name..serpent.line(tool))
    if tool["subgroup"] == "science-pack" then
        table.insert(data.raw["lab"]["omega-lab"]["inputs"], tool["name"])
		--log(serpent.line(tool))
		--log(name..": "..serpent.line(tool))
    end
end
--]]
--log(serpent.dump(data.raw["lab"]["omega-lab"]))
--end









-- ============================================================================================================
-- Extra compatibility & isolation
-- ============================================================================================================

-- 1. Extra scan for packs that might be in different subgroups from other science mods
if data.raw["lab"]["omega-lab"] and data.raw["lab"]["omega-lab"].inputs then
    for lab_name, lab in pairs(data.raw["lab"]) do
        if lab_name ~= "omega-lab" and lab.inputs then
            for _, foreign_pack in ipairs(lab.inputs) do
                
                -- Check if omega-lab is missing this specific pack
                local already_has_it = false
                for _, our_pack in ipairs(data.raw["lab"]["omega-lab"].inputs) do
                    if our_pack == foreign_pack then
                        already_has_it = true
                        break
                    end
                end
                
                -- If it's a completely new mod pack, add it to omega-lab
                if not already_has_it then
                    table.insert(data.raw["lab"]["omega-lab"].inputs, foreign_pack)
                end
            end
        end
    end
end

-- 2. Isolation: Purge our two exclusive packs from vanilla and bio labs
local exclusive_packs = {
    ["promethium-882-science-pack"] = true,
    ["antimatter-science-pack"] = true
}

-- List of target labs to clear (the standard vanilla lab and the Space Age biolab)
local target_labs = {"lab", "bio-lab"}

for _, lab_id in ipairs(target_labs) do
    local target_lab = data.raw["lab"][lab_id]
    
    if target_lab and target_lab.inputs then
        local filtered_inputs = {}
        
        -- Keep all other science packs, but skip our two targets
        for _, input_name in ipairs(target_lab.inputs) do
            if not exclusive_packs[input_name] then
                table.insert(filtered_inputs, input_name)
            end
        end
        
        -- Apply the cleaned input list to the lab
        target_lab.inputs = filtered_inputs
    end
end

