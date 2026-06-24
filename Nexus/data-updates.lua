--data-updates.lua



--[[
--Krastorio2-spaced-out compatibility
if mods["Krastorio2-spaced-out"] then
    require("__Nexus__.compatibility.Krastorio2-spaced-out.omega_lab_tech_card_fix")
	require("__Nexus__.compatibility.Krastorio2-spaced-out.technology_fix")
	require("__Nexus__.compatibility.Krastorio2-spaced-out.remove_tech")
end
--]]

for _, stackable_prototype in pairs{'loader-1x1', 'loader', 'inserter'} do
    for _, stackable in pairs(data.raw[stackable_prototype]) do
        stackable.max_belt_stack_size = stackable.max_belt_stack_size or 1
        if stackable.max_belt_stack_size ~= 1 then
            stackable.max_belt_stack_size = data.raw["utility-constants"].default.max_belt_stack_size
        end
    end
end

----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------

--<<planet-muluna compatibility>>--
if mods["planet-muluna"] then
    ------------------------------------------------
else
	require("__Nexus__.compatibility.Fusion_Upgrade_Script.fusion_upgrade")
end

----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------

--<<lilys-cubeine compatibility>>--
if mods["lilys-cubeine"] then
    ------------------------------------------------
else
	require("__Nexus__.compatibility.Fusion_Upgrade_Script.fusion_upgrade")
end

----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------

--<<module-category-defaults compatibility>>--
if mods["module-category-defaults"] then
    if ModuleCategoryDefaults and ModuleCategoryDefaults.default_categories then
        table.insert(ModuleCategoryDefaults.default_categories, "omega")
    end
end
--The mod adds a category ( ModuleCategoryDefaults ), and because of that, my modules no longer work!!!! This adds it back!!!!

----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------