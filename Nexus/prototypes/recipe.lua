--recipe.lua

require("__Nexus__.prototypes.recipecategory")


data:extend({

----------------------------------------------------------------
----------------------------------------------------------------
-------FLUID-------

{
	name = "liquid-ionit-matter",
	type = "recipe",
    enabled = false,
	ingredients = {
		{type = "item", name = "ionit-ore",amount = 100},
		{type = "fluid", name = "high-energetic-photonen-fluid", amount = 10}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "fluid", name = "liquid-ionit-matter", amount = 100}
	},
	energy_required = 4,
--	localised_description = "-----------------",
	category = "atomacer",
	--group = "intermediate-products",
	subgroup = "nexus-fluid",
	order = "c-c",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "raw-matter-1",
	type = "recipe",
	icon = "__Nexus-Graphics__/graphics/items/raw-matter.png",
    enabled = false,
	ingredients = {
		{type = "item", name = "stone",amount = 1000},
		{type = "fluid", name = "high-energetic-photonen-fluid", amount = 100}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "fluid", name = "raw-matter", amount = 100}
	},
	energy_required = 4,
--	localised_description = "-----------------",
	category = "atomacer",
	subgroup = "fluid-drain",
	order = "b-d",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "raw-matter-2",
	type = "recipe",
	icon = "__Nexus-Graphics__/graphics/items/raw-matter.png",
    enabled = false,
	ingredients = {
		{type = "item", name = "iron-ore",amount = 100},
		{type = "fluid", name = "high-energetic-photonen-fluid", amount = 100}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "fluid", name = "raw-matter", amount = 100}
	},
	energy_required = 4,
--	localised_description = "-----------------",
	category = "atomacer",
	subgroup = "fluid-drain",
	order = "b-e",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "raw-matter-3",
	type = "recipe",
	icon = "__Nexus-Graphics__/graphics/items/raw-matter.png",
    enabled = false,
	ingredients = {
		{type = "item", name = "copper-ore",amount = 100},
		{type = "fluid", name = "high-energetic-photonen-fluid", amount = 100}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "fluid", name = "raw-matter", amount = 100}
	},
	energy_required = 4,
--	localised_description = "-----------------",
	category = "atomacer",
	subgroup = "fluid-drain",
	order = "b-f",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "raw-matter-4",
	type = "recipe",
	icon = "__Nexus-Graphics__/graphics/items/raw-matter.png",
    enabled = false,
	ingredients = {
		{type = "item", name = "coal",amount = 100},
		{type = "fluid", name = "high-energetic-photonen-fluid", amount = 100}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "fluid", name = "raw-matter", amount = 100}
	},
	energy_required = 4,
--	localised_description = "-----------------",
	category = "atomacer",
	subgroup = "fluid-drain",
	order = "b-g",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "raw-matter-5",
	type = "recipe",
	icon = "__Nexus-Graphics__/graphics/items/raw-matter.png",
    enabled = false,
	ingredients = {
		{type = "item", name = "gold-ore",amount = 20},
		{type = "fluid", name = "high-energetic-photonen-fluid", amount = 20}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "fluid", name = "raw-matter", amount = 100}
	},
	energy_required = 4,
--	localised_description = "-----------------",
	category = "atomacer",
	subgroup = "fluid-drain",
	order = "b-h",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "raw-matter-6",
	type = "recipe",
	icon = "__Nexus-Graphics__/graphics/items/raw-matter.png",
    enabled = false,
	ingredients = {
		{type = "item", name = "platin-ore",amount = 5},
		{type = "fluid", name = "high-energetic-photonen-fluid", amount = 5}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "fluid", name = "raw-matter", amount = 100}
	},
	energy_required = 4,
--	localised_description = "-----------------",
	category = "atomacer",
	subgroup = "fluid-drain",
	order = "b-i",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "raw-matter-7",
	type = "recipe",
	icon = "__Nexus-Graphics__/graphics/items/raw-matter.png",
    enabled = false,
	ingredients = {
		{type = "item", name = "scrap",amount = 50},
		{type = "fluid", name = "high-energetic-photonen-fluid", amount = 50}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "fluid", name = "raw-matter", amount = 100}
	},
	energy_required = 4,
--	localised_description = "-----------------",
	category = "atomacer",
	subgroup = "fluid-drain",
	order = "b-j",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "high-energetic-photonen-fluid-mk1",
	type = "recipe",
	icon = "__Nexus-Graphics__/graphics/items/high-energetic-photonen-fluid.png",
    enabled = false,
--	ingredients = {
--		{type = "item", name = "ionit-ore",amount = 20},
--		{type = "fluid", name = "water", amount = 2 }
--	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "fluid", name = "high-energetic-photonen-fluid", amount = 400},
	{type = "item", name = "critical-photon-cube", probability = 0.001, amount = 1}
	},
	energy_required = 6,
--	localised_description = "-----------------",
	category = "photon-enrichment-chamber",
	subgroup = "nexus-fluid",
	order = "c-a",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "high-energetic-photonen-fluid-mk2",
	type = "recipe",
	icon = "__Nexus-Graphics__/graphics/items/high-energetic-photonen-fluid.png",
    enabled = false,
	ingredients = {
		{type = "item", name = "high-energy-crystal",amount = 1},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "fluid", name = "high-energetic-photonen-fluid", amount = 600},
	{type = "item", name = "high-energy-crystal",probability = 0.98,amount = 1},
	},
	energy_required = 6,
--	localised_description = "-----------------",
	category = "photon-enrichment-chamber-mk2",
	subgroup = "nexus-fluid",
	order = "c-b",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "photonen-energy-fluid-mk1",
	type = "recipe",
	icon = "__Nexus-Graphics__/graphics/items/photonen-energy-fluid.png",
    enabled = false,
	ingredients = {
		{type = "fluid", name = "high-energetic-photonen-fluid",amount = 100},
		{type = "item", name = "critical-photon-cube",amount = 1},
		{type = "item", name = "gold-plate",amount = 1},
		{type = "item", name = "platin-plate",amount = 1},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "fluid", name = "photonen-energy-fluid", amount = 10},
	{type = "item", name = "critical-photon-cube", probability = 0.98, amount = 1}
	},
	energy_required = 4,
--	localised_description = "-----------------",
	category = "photon-enrichment-chamber",
	subgroup = "nexus-labs",
	order = "k-b",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "photonen-energy-fluid-mk2",
	type = "recipe",
	icon = "__Nexus-Graphics__/graphics/items/photonen-energy-fluid.png",
    enabled = false,
	ingredients = {
		{type = "fluid", name = "high-energetic-photonen-fluid",amount = 100},
		{type = "item", name = "critical-photon-cube",amount = 1},
		{type = "item", name = "gold-plate",amount = 1},
		{type = "item", name = "platin-plate",amount = 1},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "fluid", name = "photonen-energy-fluid", amount = 40},
	{type = "item", name = "critical-photon-cube", probability = 0.98, amount = 1}
	},
	energy_required = 4,
--	localised_description = "-----------------",
	category = "photon-enrichment-chamber-mk2",
	subgroup = "nexus-labs",
	order = "k-c",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
    type = "recipe",
    name = "advanced-fluoroketone-cooling",
    icon = "__space-age__/graphics/icons/fluid/fluoroketone-cooling.png",
    --localised_name = {"recipe-name.fluoroketone-cooling"},
    category = "cryogenics",
    subgroup = "fusion",
    order = "h-e",
    auto_recycle = false,
    energy_required = 5,
    ingredients =
    {
      {type = "fluid", name = "fluoroketone-hot", amount = 100, ignored_by_stats = 10},
	  {type = "fluid", name = "high-energetic-photonen-fluid", amount = 1,},
    },
    results =
    {
      {type = "fluid", name = "fluoroketone-cold", amount = 100, temperature = -150, ignored_by_stats = 10},
	  {type = "fluid", name = "high-energetic-photonen-fluid", probability=0.9, amount = 1,},
    },
    show_amount_in_title = false,
    always_show_products = true,
    allow_productivity = false,
    enabled = false,
    crafting_machine_tint =
    {
      primary = {r = 0.455, g = 0.837, b = 0.563, a = 1.000}, -- #73d58fff
      secondary = {r = 0.398, g = 0.732, b = 0.681, a = 1.000}, -- #65baadff
      tertiary = {r = 0.337, g = 0.306, b = 0.306, a = 1.000}, -- #554e4eff
      quaternary = {r = 0.436, g = 0.743, b = 0.711, a = 1.000}, -- #6fbdb5ff
    }
},
----------------------------------------------------------------
{
	name = "omega-canister",
	type = "recipe",
    enabled = false,
	ingredients = {
		{type = "item", name = "omega-alloy",amount = 4},
		{type = "item", name = "holmium-plate",amount = 10},
		{type = "item", name = "tungsten-plate", amount = 10}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "omega-canister", amount = 1}
	},
	energy_required = 32,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "thruster",
	order = "g-a",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "high-energetic-photonen-fluid-canister-fill",
	type = "recipe",
    enabled = false,
	ingredients = {
		{type = "item", name = "omega-canister",amount = 1},
		{type = "fluid", name = "high-energetic-photonen-fluid", amount = 2000}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "high-energetic-photonen-fluid-canister", amount = 1}
	},
	energy_required = 6,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "thruster",
	order = "g-b",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "high-energetic-photonen-fluid-canister-drain",
	icon = "__Nexus-Graphics__/graphics/items/high-energetic-photonen-fluid-canister.png",
	type = "recipe",
    enabled = false,
	ingredients = {
		{type = "item", name = "high-energetic-photonen-fluid-canister",amount = 1}
	},
	results = {
	{type = "item", name = "omega-canister",amount = 1},
	{type = "fluid", name = "high-energetic-photonen-fluid", amount = 2000}
	},
	energy_required = 6,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "fluid-drain",
	order = "b-a",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "antimatter-fuel-rod-fill",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "fluid", name = "antimatter",amount = 1000},
		{type = "item", name = "empty-fuel-rod",amount = 1},
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "antimatter-fuel-rod", amount = 1}
	},
	energy_required = 40.0,
--	localised_description = "-----------------",
	category = "nano-fluid-factory",
	subgroup = "critical-components",
	order = "f-d",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "antimatter-fuel-rod-drain",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "antimatter-fuel-rod",amount = 1},
	},
	results = {
	{type = "fluid", name = "antimatter", amount = 1000}
	},
	energy_required = 40.0,
--	localised_description = "-----------------",
	category = "nano-fluid-factory",
	subgroup = "fluid-drain",
	order = "b-b",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "exotic-matter-fuel-rod-fill",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "fluid", name = "exotic-matter",amount = 1000},
		{type = "item", name = "empty-fuel-rod",amount = 1},
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "exotic-matter-fuel-rod", amount = 1}
	},
	energy_required = 40.0,
--	localised_description = "-----------------",
	category = "nano-fluid-factory",
	subgroup = "critical-components",
	order = "f-e",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "exotic-matter-fuel-rod-drain",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "exotic-matter-fuel-rod",amount = 1},
	},
	results = {
	{type = "fluid", name = "exotic-matter", amount = 1000}
	},
	energy_required = 40.0,
--	localised_description = "-----------------",
	category = "nano-fluid-factory",
	subgroup = "fluid-drain",
	order = "b-c",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "molten-platin",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/molten-platin.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "platin-ore",amount = 5},
		{type = "item", name = "calcite",amount = 1}
	},
--[[
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
--]]
	results = {
	{type = "fluid", name = "molten-platin", amount = 50}
	},
	energy_required = 32.2,
--	localised_description = "-----------------",
	category = "metallurgy",
	subgroup = "nexus-fluid",
	order = "c-g",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "molten-gold",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/molten-gold.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "gold-ore",amount = 5},
		{type = "item", name = "calcite",amount = 1}
	},
--[[
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
--]]
	results = {
	{type = "fluid", name = "molten-gold", amount = 50}
	},
	energy_required = 32.2,
--	localised_description = "-----------------",
	category = "metallurgy",
	subgroup = "nexus-fluid",
	order = "c-f",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "liquid-coal-matter",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/liquid-coal-matter.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "coal",amount = 100},
		{type = "fluid", name = "high-energetic-photonen-fluid",amount = 10},
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "fluid", name = "liquid-coal-matter", amount = 100}
	},
	energy_required = 2,
--	localised_description = "-----------------",
	category = "atomacer",
	subgroup = "nexus-fluid",
	order = "c-e",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "antimatter",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/antimatter.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "critical-photon-fuel-rod",amount = 1}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "fluid", name = "antimatter",amount = 10}
	},
	energy_required = 10,
--	localised_description = "-----------------",
	category = "matter-activator",
	subgroup = "nexus-fluid",
	order = "c-h",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "exotic-matter",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/exotic-matter.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "critical-photon-fuel-rod",amount = 1}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "fluid", name = "exotic-matter",amount = 10}
	},
	energy_required = 10,
--	localised_description = "-----------------",
	category = "matter-activator",
	subgroup = "nexus-fluid",
	order = "c-i",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "zero-point-energy-anti-proton",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/zero-point-energy-anti-proton.png",
	enabled = false,
	ingredients = {
		{type = "fluid", name = "raw-matter",amount = 25}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "fluid", name = "zero-point-energy",amount = 60}
	},
	energy_required = 1,
--	localised_description = "-----------------",
	category = "zero-point-energy-engine-injector-down",
	subgroup = "fusion",
	order = "h-k",
	--always_show_made_in = true,
	allow_productivity = false,
	--allowed_module_categories = {"speed", "quality", "omega"},
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "zero-point-energy-anti-neutron",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/zero-point-energy-anti-neutron.png",
	enabled = false,
	ingredients = {
		{type = "fluid", name = "raw-matter",amount = 25}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "fluid", name = "zero-point-energy",amount = 60}
	},
	energy_required = 1,
--	localised_description = "-----------------",
	category = "zero-point-energy-engine-injector-left",
	subgroup = "fusion",
	order = "h-l",
	--always_show_made_in = true,
	allow_productivity = false,
	--allowed_module_categories = {"speed", "quality", "omega"},
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "zero-point-energy-anti-quarks",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/zero-point-energy-anti-quarks.png",
	enabled = false,
	ingredients = {
		{type = "fluid", name = "raw-matter",amount = 25}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "fluid", name = "zero-point-energy",amount = 60}
	},
	energy_required = 1,
--	localised_description = "-----------------",
	category = "zero-point-energy-engine-injector-up",
	subgroup = "fusion",
	order = "h-m",
	--always_show_made_in = true,
	allow_productivity = false,
	--allowed_module_categories = {"speed", "quality", "omega"},
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "zero-point-energy-anti-leptonen",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/zero-point-energy-anti-leptonen.png",
	enabled = false,
	ingredients = {
		{type = "fluid", name = "raw-matter",amount = 25}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "fluid", name = "zero-point-energy",amount = 60}
	},
	energy_required = 1,
--	localised_description = "-----------------",
	category = "zero-point-energy-engine-injector-right",
	subgroup = "fusion",
	order = "h-n",
	--always_show_made_in = true,
	allow_productivity = false,
	--allowed_module_categories = {"speed", "quality", "omega"},
	allow_quality = false,
},

----------------------------------------------------------------
----------------------------------------------------------------
-------ITEMS-------

{
	name = "element-882-separate",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/promethium.png",
	enabled = false,
	ingredients = {
		{type = "fluid", name = "high-energetic-photonen-fluid",amount = 1},
		{type = "fluid", name = "liquid-ionit-matter", amount = 10}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "promethium", probability = 0.004, amount = 1},
	{type = "item", name = "iron-ore", probability = 0.07, amount = 7},
	{type = "item", name = "copper-ore", probability = 0.02, amount = 2},
	{type = "item", name = "stone", probability = 0.811, amount = 12},
	{type = "item", name = "scrap", probability = 0.02, amount = 2},
	{type = "item", name = "copper-cable", probability = 0.05, amount = 5},
	{type = "item", name = "platin-ore", probability = 0.01, amount = 2},
	{type = "item", name = "gold-ore", probability = 0.015, amount = 3}
	},
	energy_required = 1.0,
--	localised_description = "-----------------",
	category = "atomar-separator",
	subgroup = "components",
	order = "d-a",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "omega-alloy",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/omega-alloy.png",
	enabled = false,
	ingredients = {
		{type = "fluid", name = "high-energetic-photonen-fluid",amount = 200},
		{type = "item", name = "promethium",amount = 1},
		{type = "item", name = "holmium-plate",amount = 2},
		{type = "item", name = "lithium",amount = 2},
		{type = "item", name = "bioflux",amount = 2},
		{type = "item", name = "gold-plate",amount = 1},
		{type = "item", name = "platin-plate",amount = 1},
		{type = "item", name = "tungsten-plate", amount = 8}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "omega-alloy", amount = 1}
	},
	energy_required = 1,
--	localised_description = "-----------------",
	category = "atomar-assembler",
	subgroup = "components",
	order = "d-h",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "gold-plate",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/gold-plate.png",
	enabled = false,
	ingredients = {
		{type = "fluid", name = "molten-gold",amount = 10}
	},
--[[
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
--]]
	results = {
	{type = "item", name = "gold-plate", amount = 1}
	},
	energy_required = 32.2,
--	localised_description = "-----------------",
	category = "metallurgy",
	subgroup = "components",
	order = "d-f",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "critical-photon-cube-stabilization",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/critical-photon-cube.png",
	enabled = false,
	result_is_always_fresh = true,
	allow_inserter_overload = false,
	overload_multiplier = 0,
	ingredients = {
		{type = "item", name = "critical-photon-cube",amount = 1}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 1
      }
    },
	results = {
	{type = "item", name = "critical-photon-cube", amount = 1,}
	},
	energy_required = 6,
--	localised_description = "-----------------",
	category = "matter-stabilizer",
	subgroup = "stabilization",
	order = "i-a",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "singularity-crystal-core-13-stabilization",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/singularity-crystal-core-13.png",
	enabled = false,
	result_is_always_fresh = true,
	allow_inserter_overload = false,
	overload_multiplier = 0,
	ingredients = {
		{type = "item", name = "singularity-crystal-core-13",amount = 1}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 1
      }
    },
	results = {
	{type = "item", name = "singularity-crystal-core-13", amount = 1,}
	},
	energy_required = 2,
--	localised_description = "-----------------",
	category = "matter-stabilizer",
	subgroup = "stabilization",
	order = "i-b",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "singularity-crystal-core-65-stabilization",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/singularity-crystal-core-65.png",
	enabled = false,
	result_is_always_fresh = true,
	allow_inserter_overload = false,
	overload_multiplier = 0,
	ingredients = {
		{type = "item", name = "singularity-crystal-core-65",amount = 1}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 1
      }
    },
	results = {
	{type = "item", name = "singularity-crystal-core-65", amount = 1,}
	},
	energy_required = 2,
--	localised_description = "-----------------",
	category = "matter-stabilizer",
	subgroup = "stabilization",
	order = "i-c",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "singularity-crystal-core-119-stabilization",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/singularity-crystal-core-119.png",
	enabled = false,
	result_is_always_fresh = true,
	allow_inserter_overload = false,
	overload_multiplier = 0,
	ingredients = {
		{type = "item", name = "singularity-crystal-core-119",amount = 1}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 1
      }
    },
	results = {
	{type = "item", name = "singularity-crystal-core-119", amount = 1,}
	},
	energy_required = 2,
--	localised_description = "-----------------",
	category = "matter-stabilizer",
	subgroup = "stabilization",
	order = "i-d",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "singularity-crystal-core-313-stabilization",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/singularity-crystal-core-313.png",
	enabled = false,
	result_is_always_fresh = true,
	allow_inserter_overload = false,
	overload_multiplier = 0,
	ingredients = {
		{type = "item", name = "singularity-crystal-core-313",amount = 1}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 1
      }
    },
	results = {
	{type = "item", name = "singularity-crystal-core-313", amount = 1,}
	},
	energy_required = 2,
--	localised_description = "-----------------",
	category = "matter-stabilizer",
	subgroup = "stabilization",
	order = "i-e",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "singularity-crystal-core-412-stabilization",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/singularity-crystal-core-412.png",
	enabled = false,
	result_is_always_fresh = true,
	allow_inserter_overload = false,
	overload_multiplier = 0,
	ingredients = {
		{type = "item", name = "singularity-crystal-core-412",amount = 1}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 1
      }
    },
	results = {
	{type = "item", name = "singularity-crystal-core-412", amount = 1,}
	},
	energy_required = 2,
--	localised_description = "-----------------",
	category = "matter-stabilizer",
	subgroup = "stabilization",
	order = "i-f",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "dark-matter-crystal-stabilization",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/dark-matter-crystal.png",
	enabled = false,
	result_is_always_fresh = true,
	allow_inserter_overload = false,
	overload_multiplier = 0,
	ingredients = {
		{type = "item", name = "dark-matter-crystal",amount = 1}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 1
      }
    },
	results = {
	{type = "item", name = "dark-matter-crystal", amount = 1,}
	},
	energy_required = 4,
--	localised_description = "-----------------",
	category = "matter-stabilizer",
	subgroup = "stabilization",
	order = "i-g",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "critical-photon-cube-production-mk1",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/critical-photon-cube.png",
	enabled = false,
	result_is_always_fresh = true,
	allow_inserter_overload = false,
	overload_multiplier = 0,
	ingredients = {
		{type = "fluid", name = "high-energetic-photonen-fluid",amount = 100}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "critical-photon-cube", probability=0.10, amount = 1,}
	},
	energy_required = 5,
--	localised_description = "-----------------",
	category = "photon-enrichment-chamber",
	subgroup = "critical-components",
	order = "f-a",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "critical-photon-cube-production-mk2",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/critical-photon-cube.png",
	enabled = false,
	result_is_always_fresh = true,
	allow_inserter_overload = false,
	overload_multiplier = 0,
	ingredients = {
		{type = "fluid", name = "high-energetic-photonen-fluid", amount = 100},
		{type = "item", name = "high-energy-crystal", amount = 1}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "critical-photon-cube", probability=0.20, amount = 1,},
	{type = "item", name = "high-energy-crystal",probability=0.98, amount = 1}
	},
	energy_required = 5,
--	localised_description = "-----------------",
	category = "photon-enrichment-chamber-mk2",
	subgroup = "critical-components",
	order = "f-b",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "platin-plate",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/platin-plate.png",
	enabled = false,
	ingredients = {
		{type = "fluid", name = "molten-platin",amount = 20}
	},
--[[
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
--]]
	results = {
	{type = "item", name = "platin-plate", amount = 1}
	},
	energy_required = 32.2,
--	localised_description = "-----------------",
	category = "metallurgy",
	subgroup = "components",
	order = "d-g",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "graphit",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/graphit-1.png",
	enabled = false,
	ingredients = {
		{type = "fluid", name = "high-energetic-photonen-fluid",amount = 10},
		{type = "fluid", name = "liquid-coal-matter",amount = 10}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "graphit", amount = 1}
	},
	energy_required = 4.0,
--	localised_description = "-----------------",
	category = "atomar-separator",
	subgroup = "components",
	order = "d-b",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "diamond",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/diamond-2.png",
	enabled = false,
	ingredients = {
		{type = "fluid", name = "high-energetic-photonen-fluid",amount = 2000},
		{type = "item", name = "graphit",amount = 10}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "diamond", amount = 1}
	},
	energy_required = 65.0,
--	localised_description = "-----------------",
	category = "atomar-assembler",
	subgroup = "components",
	order = "b-c",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "advanced-coil",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/advanced-coil.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "gold-wire",amount = 100},
		{type = "item", name = "copper-cable",amount = 100},
		{type = "item", name = "promethium",amount = 1}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "advanced-coil", amount = 1}
	},
	energy_required = 68.0,
--	localised_description = "-----------------",
	category = "electromagnetics",
	subgroup = "components",
	order = "d-n",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "gold-wire",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/gold-wire.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "gold-plate",amount = 1}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "gold-wire", amount = 2}
	},
	energy_required = 6.0,
--	localised_description = "-----------------",
	category = "electromagnetics",
	subgroup = "components",
	order = "d-i",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "omega-inductor",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/omega-inductor.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "omega-beam",amount = 2},
		{type = "item", name = "advanced-coil",amount = 1},
		{type = "item", name = "thermal-plate",amount = 1}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "omega-inductor", amount = 1}
	},
	energy_required = 60.0,
--	localised_description = "-----------------",
	category = "electromagnetics",
	subgroup = "advanced-components",
	order = "e-f",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "omega-beam",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/omega-beam.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "omega-alloy",amount = 1},
		{type = "item", name = "tungsten-plate",amount = 10}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "omega-beam", amount = 1}
	},
	energy_required = 6.0,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "components",
	order = "d-p",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "omega-gear",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/omega-gear.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "omega-alloy",amount = 1},
		{type = "item", name = "tungsten-carbide",amount = 10}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "omega-gear", amount = 1}
	},
	energy_required = 6.0,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "components",
	order = "d-o",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "silica-rich-sand",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/silica-rich-sand.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "stone",amount = 10}
	},
	results = {
	{type = "item", name = "silica-rich-sand", amount = 1}
	},
	energy_required = 1.2,
--	localised_description = "-----------------",
	category = "advanced-crusher",
	subgroup = "components",
	order = "d-d",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "tempered-glass",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/tempered-glass.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "silica-rich-sand",amount = 10},
		{type = "item", name = "tungsten-plate",amount = 2}
	},
	results = {
	{type = "item", name = "tempered-glass", amount = 1}
	},
	energy_required = 26.0,
--	localised_description = "-----------------",
	category = "metallurgy",
	subgroup = "components",
	order = "d-e",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "advanced-filter",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/advanced-filter.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "omega-beam",amount = 4},
		{type = "item", name = "gold-foil",amount = 10},
		{type = "item", name = "graphit",amount = 80}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "advanced-filter", amount = 1}
	},
	energy_required = 60.0,
--	localised_description = "-----------------",
	category = "nano-factory",
	subgroup = "advanced-components",
	order = "e-a",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "gold-foil",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/gold-foil-2.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "gold-plate",amount = 1}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "gold-foil", amount = 1}
	},
	energy_required = 38.0,
--	localised_description = "-----------------",
	category = "roller-factory",
	subgroup = "components",
	order = "d-j",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "organic-mesh",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/organic-mesh-1.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "bioflux",amount = 8},
		{type = "fluid", name = "water", amount = 100},
		{type = "item", name = "carbon",amount = 8}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 2000,
        max = 2000
      }
    },
	results = {
	{type = "item", name = "organic-mesh", amount = 1}
	},
	energy_required = 18.0,
--	localised_description = "-----------------",
	category = "organic",
	subgroup = "components",
	order = "d-l",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
	result_is_always_fresh = true,
	crafting_machine_tint =
    {
      primary = {r = 0.8, g = 0.9, b = 1, a = 1.000},
      secondary = {r = 0.900, g = 0.137, b = 0.000, a = 1.000},
    }
},
----------------------------------------------------------------
{
	name = "platin-mesh",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/platin-mesh.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "platin-plate",amount = 1}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "platin-mesh", amount = 1}
	},
	energy_required = 7.5,
--	localised_description = "-----------------",
	category = "roller-factory",
	subgroup = "components",
	order = "d-k",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "gold-foil-mesh",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/gold-foil-mesh.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "platin-mesh",amount = 1},
		{type = "item", name = "gold-foil",amount = 1},
		{type = "item", name = "organic-mesh",amount = 1}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "gold-foil-mesh", amount = 1}
	},
	energy_required = 20.0,
--	localised_description = "-----------------",
	category = "roller-factory",
	subgroup = "components",
	order = "d-m",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "thermal-plate",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/thermal-plate.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "gold-foil-mesh",amount = 2},
		{type = "item", name = "gold-foil",amount = 4},
		{type = "item", name = "omega-beam",amount = 10},
		{type = "item", name = "organic-mesh",amount = 2}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "thermal-plate", amount = 1}
	},
	energy_required = 24.5,
--	localised_description = "-----------------",
	category = "nano-factory",
	subgroup = "advanced-components",
	order = "e-h",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "omega-transformer",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/omega-transformer.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "gold-foil-mesh",amount = 4},
		{type = "item", name = "omega-inductor",amount = 2},
		{type = "item", name = "omega-beam",amount = 10},
		{type = "item", name = "steel-plate",amount = 100}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "omega-transformer", amount = 1}
	},
	energy_required = 27.5,
--	localised_description = "-----------------",
	category = "nano-factory",
	subgroup = "advanced-components",
	order = "e-g",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "promethium-lens",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/promethium-lens.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "tempered-glass",amount = 10},
		{type = "item", name = "diamond",amount = 10},
		{type = "item", name = "promethium",amount = 5},
		{type = "fluid", name = "water",amount = 10000}
	},
	results = {
	{type = "item", name = "promethium-lens", amount = 1}
	},
	energy_required = 28.0,
--	localised_description = "-----------------",
	category = "roller-factory",
	subgroup = "advanced-components",
	order = "e-i",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "advanced-microchip",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/advanced-microchip.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "electronic-memory",amount = 100},
		{type = "item", name = "electronic-triode",amount = 80},
		{type = "item", name = "gold-wire",amount = 200},
		{type = "item", name = "processing-unit",amount = 100}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "advanced-microchip", amount = 1}
	},
	energy_required = 12.5,
--	localised_description = "-----------------",
	category = "nano-factory",
	subgroup = "advanced-components",
	order = "e-b",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "electronic-memory",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/electronic-memory.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "organic-mesh",amount = 1},
		{type = "item", name = "platin-mesh",amount = 1},
		{type = "item", name = "omega-beam",amount = 2}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "electronic-memory", amount = 1}
	},
	energy_required = 10.0,
--	localised_description = "-----------------",
	category = "nano-factory",
	subgroup = "advanced-components",
	order = "e-c",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "electronic-triode",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/electronic-triode.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "organic-mesh",amount = 10},
		{type = "item", name = "platin-mesh",amount = 8},
		{type = "item", name = "tempered-glass",amount = 20},
		{type = "item", name = "gold-wire",amount = 40},
		{type = "item", name = "omega-beam",amount = 10}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "electronic-triode", amount = 1}
	},
	energy_required = 7.5,
--	localised_description = "-----------------",
	category = "nano-factory",
	subgroup = "advanced-components",
	order = "e-d",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "photon-sensor",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/photon-sensor.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "electronic-triode",amount = 20},
		{type = "item", name = "gold-wire",amount = 80},
		{type = "item", name = "thermal-plate",amount = 8},
		{type = "item", name = "omega-inductor",amount = 8},
		{type = "item", name = "promethium-lens",amount = 10},
		{type = "item", name = "quantum-processor",amount = 100},
		{type = "item", name = "omega-gear",amount = 60},
		{type = "item", name = "omega-beam",amount = 80}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "photon-sensor", amount = 1}
	},
	energy_required = 32.0,
--	localised_description = "-----------------",
	category = "nano-factory",
	subgroup = "advanced-components",
	order = "e-j",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "photon-chip",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/photon-chip.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "electronic-triode",amount = 20},
		{type = "item", name = "gold-wire",amount = 600},
		{type = "item", name = "superconductor",amount = 200},
		{type = "item", name = "thermal-plate",amount = 10},
		{type = "item", name = "supercapacitor",amount = 200},
		{type = "item", name = "advanced-microchip",amount = 20},
		{type = "item", name = "organic-mesh",amount = 20},
		{type = "item", name = "quantum-processor",amount = 100},
		{type = "item", name = "omega-beam",amount = 40}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "photon-chip", amount = 1}
	},
	energy_required = 32.0,
--	localised_description = "-----------------",
	category = "nano-factory",
	subgroup = "advanced-components",
	order = "e-e",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "photon-processor",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/photon-processor.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "omega-transformer",amount = 4},
		{type = "item", name = "gold-wire",amount = 80},
		{type = "item", name = "gold-foil-mesh",amount = 6},
		{type = "item", name = "thermal-plate",amount = 40},
		{type = "item", name = "superconductor",amount = 200},
		{type = "item", name = "photon-chip",amount = 4},
		{type = "item", name = "graphit",amount = 60},
		{type = "item", name = "tempered-glass",amount = 24},
		{type = "item", name = "omega-beam",amount = 60}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "photon-processor", amount = 1}
	},
	energy_required = 38.0,
--	localised_description = "-----------------",
	category = "nano-factory",
	subgroup = "advanced-components",
	order = "e-k",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "advanced-photon-processor",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/advanced-photon-processor.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "omega-transformer",amount = 10},
		{type = "item", name = "photon-processor",amount = 4},
		{type = "item", name = "platin-mesh",amount = 40},
		{type = "item", name = "photon-sensor",amount = 16},
		{type = "item", name = "thermal-plate",amount = 60},
		{type = "item", name = "supercapacitor",amount = 800},
		{type = "item", name = "superconductor",amount = 1000},
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "advanced-photon-processor", amount = 1}
	},
	energy_required = 48.0,
--	localised_description = "-----------------",
	category = "nano-factory",
	subgroup = "advanced-components",
	order = "e-l",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},
----------------------------------------------------------------
{
	name = "empty-fuel-rod",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "electronic-triode",amount = 2},
		{type = "item", name = "gold-wire",amount = 10},
		{type = "item", name = "superconductor",amount = 40},
		{type = "item", name = "thermal-plate",amount = 2},
		{type = "item", name = "supercapacitor",amount = 24},
		{type = "item", name = "photon-sensor",amount = 1},
		{type = "item", name = "advanced-coil",amount = 2},
		{type = "item", name = "tempered-glass",amount = 10},
		{type = "item", name = "gold-foil-mesh",amount = 10},
		{type = "item", name = "quantum-processor",amount = 1},
		{type = "item", name = "omega-beam",amount = 2}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "empty-fuel-rod", amount = 1}
	},
	energy_required = 40.0,
--	localised_description = "-----------------",
	category = "nano-fluid-factory",
	subgroup = "critical-components",
	order = "f-b",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "critical-photon-fuel-rod",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "critical-photon-cube",amount = 1},
		{type = "item", name = "dark-matter-crystal",amount = 1},
		{type = "item", name = "empty-fuel-rod",amount = 1},
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "critical-photon-fuel-rod", amount = 1}
	},
	energy_required = 40.0,
--	localised_description = "-----------------",
	category = "nano-fluid-factory",
	subgroup = "critical-components",
	order = "f-c",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "dark-matter-crystal",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "high-energy-crystal",amount = 1},
		{type = "fluid", name = "high-energetic-photonen-fluid",amount = 100},
		{type = "fluid", name = "photonen-energy-fluid",amount = 100},
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "dark-matter-crystal", amount = 1}
	},
	energy_required = 22.0,
--	localised_description = "-----------------",
	category = "singularity-assembler",
	subgroup = "critical-components",
	order = "f-f",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "singularity-crystals-stage-1",
	type = "recipe",
	icon = "__Nexus-Graphics__/graphics/items/singularity-crystal-core-412.png",
	enabled = false,
	ingredients = {
		{type = "fluid", name = "photonen-energy-fluid",amount = 60},
		{type = "fluid", name = "raw-matter",amount = 1000},
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "singularity-crystal-core-13", probability = 0.62, amount = 1},
	{type = "item", name = "singularity-crystal-core-65", probability = 0.23, amount = 1},
	{type = "item", name = "singularity-crystal-core-119", probability = 0.11, amount = 1},
	{type = "item", name = "singularity-crystal-core-313", probability = 0.03, amount = 1},
	{type = "item", name = "singularity-crystal-core-412", probability = 0.01, amount = 1}
	},
	energy_required = 20.0,
--	localised_description = "-----------------",
	category = "singularity-assembler",
	subgroup = "singularity",
	order = "n-a",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "singularity-crystals-stage-2",
	type = "recipe",
	icon = "__Nexus-Graphics__/graphics/items/singularity-crystal-core-65.png",
	enabled = false,
	result_is_always_fresh = true,
	allow_inserter_overload = false,
	overload_multiplier = 0,
	ingredients = {
		{type = "fluid", name = "photonen-energy-fluid",amount = 40},
		{type = "item", name = "singularity-crystal-core-13",amount = 1},
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "singularity-crystal-core-65", probability = 0.90, amount = 1},
	{type = "item", name = "critical-photon-cube", probability = 0.01, amount = 1},
	},
	energy_required = 20.0,
--	localised_description = "-----------------",
	category = "singularity-assembler",
	subgroup = "singularity",
	order = "n-b",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "singularity-crystals-stage-3",
	type = "recipe",
	icon = "__Nexus-Graphics__/graphics/items/singularity-crystal-core-119.png",
	enabled = false,
	result_is_always_fresh = true,
	allow_inserter_overload = false,
	overload_multiplier = 0,
	ingredients = {
		{type = "fluid", name = "photonen-energy-fluid",amount = 40},
		{type = "item", name = "singularity-crystal-core-65",amount = 1},
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "singularity-crystal-core-119", probability = 0.80, amount = 1},
	{type = "item", name = "critical-photon-cube", probability = 0.02, amount = 1},
	},
	energy_required = 20.0,
--	localised_description = "-----------------",
	category = "singularity-assembler",
	subgroup = "singularity",
	order = "n-c",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "singularity-crystals-stage-4",
	type = "recipe",
	icon = "__Nexus-Graphics__/graphics/items/singularity-crystal-core-313.png",
	enabled = false,
	result_is_always_fresh = true,
	allow_inserter_overload = false,
	overload_multiplier = 0,
	ingredients = {
		{type = "fluid", name = "photonen-energy-fluid",amount = 40},
		{type = "item", name = "singularity-crystal-core-119",amount = 1},
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "singularity-crystal-core-313", probability = 0.70, amount = 1},
	{type = "item", name = "critical-photon-cube", probability = 0.03, amount = 1},
	},
	energy_required = 20.0,
--	localised_description = "-----------------",
	category = "singularity-assembler",
	subgroup = "singularity",
	order = "n-d",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "singularity-crystals-stage-5",
	type = "recipe",
	icon = "__Nexus-Graphics__/graphics/items/singularity-crystal-core-412.png",
	enabled = false,
	result_is_always_fresh = true,
	allow_inserter_overload = false,
	overload_multiplier = 0,
	ingredients = {
		{type = "fluid", name = "photonen-energy-fluid",amount = 40},
		{type = "item", name = "singularity-crystal-core-313",amount = 1},
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "singularity-crystal-core-412", probability = 0.60, amount = 1},
	{type = "item", name = "critical-photon-cube", probability = 0.04, amount = 1},
	},
	energy_required = 20.0,
--	localised_description = "-----------------",
	category = "singularity-assembler",
	subgroup = "singularity",
	order = "n-e",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "high-energy-crystal",
	type = "recipe",
	icon = "__Nexus-Graphics__/graphics/items/high-energy-crystal.png",
	enabled = false,
	ingredients = {
		{type = "fluid", name = "photonen-energy-fluid",amount = 10},
		{type = "item", name = "gold-ore",amount = 1},
		{type = "item", name = "platin-ore",amount = 1},
		{type = "item", name = "singularity-crystal-core-13",amount = 1},
		{type = "item", name = "singularity-crystal-core-65",amount = 1},
		{type = "item", name = "singularity-crystal-core-119",amount = 1},
		{type = "item", name = "singularity-crystal-core-313",amount = 1},
		{type = "item", name = "singularity-crystal-core-412",amount = 1},
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "high-energy-crystal", amount = 1},
	},
	energy_required = 28.0,
--	localised_description = "-----------------",
	category = "singularity-assembler",
	subgroup = "singularity",
	order = "n-f",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "advanced-fusion-fuel",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/advanced-fusion-fuel.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "fusion-power-cell",amount = 1},
		{type = "item", name = "promethium",amount = 1},
		{type = "item", name = "critical-photon-cube",amount = 1},
		{type = "item", name = "high-energy-crystal",amount = 1},
		{type = "fluid", name = "photonen-energy-fluid",amount = 80}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "advanced-fusion-fuel", amount = 2}
	},
	energy_required = 10,
--	localised_description = "-----------------",
	category = "singularity-assembler",
	subgroup = "fusion",
	order = "h-d",
	--always_show_made_in = true,
	allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
},

----------------------------------------------------------------
----------------------------------------------------------------
-------THRUSTERS-------

{
	name = "photon-stream-thruster",
	type = "recipe",
    icon = "__space-age__/graphics/icons/thruster.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "omega-alloy",amount = 10},
		{type = "item", name = "steel-plate",amount = 1000},
		{type = "item", name = "tungsten-carbide",amount = 500},
		{type = "item", name = "quantum-processor",amount = 10},
		{type = "item", name = "advanced-coil",amount = 1},
		{type = "item", name = "gold-foil-mesh",amount = 6},
		{type = "item", name = "supercapacitor",amount = 200},
		{type = "item", name = "superconductor",amount = 400},
		{type = "item", name = "omega-beam",amount = 100},
		{type = "item", name = "omega-gear",amount = 80}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "photon-stream-thruster", amount = 1}
	},
	energy_required = 80.0,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "thruster",
    order = "g-c",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "warp-drive-engine",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/warp-drive-engine.png",
	enabled = false,
	ingredients = {
	    {type = "item", name = "warp-drive-frame",amount = 1},
		{type = "item", name = "exotic-matter-containment-fields-generator",amount = 1},
		{type = "item", name = "antimatter-containment-fields-generator",amount = 1},
		{type = "item", name = "gravity-fields-generator",amount = 1},
		{type = "item", name = "singularity-core",amount = 1},
		{type = "item", name = "advanced-photon-processor",amount = 100},
		{type = "item", name = "omega-alloy",amount = 1000},
		{type = "item", name = "steel-plate",amount = 20000},
		{type = "item", name = "tungsten-carbide",amount = 5000},
		{type = "item", name = "quantum-processor",amount = 1000},
		{type = "item", name = "advanced-coil",amount = 200},
		{type = "item", name = "gold-foil-mesh",amount = 80},
		{type = "item", name = "supercapacitor",amount = 20000},
		{type = "item", name = "superconductor",amount = 20000},
		{type = "item", name = "omega-beam",amount = 800},
		{type = "item", name = "omega-gear",amount = 1000}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "warp-drive-engine", amount = 1}
	},
	energy_required = 400.0,
--	localised_description = "-----------------",
	category = "nano-fluid-factory",
	subgroup = "thruster",
    order = "g-d]",
	--always_show_made_in = true,
	allow_productivity = false,
},

----------------------------------------------------------------
----------------------------------------------------------------
-------WARP DRIVE COMPONENTS-------

{
	name = "warp-drive-frame",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/warp-drive-frame.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "omega-alloy",amount = 3500},
		{type = "item", name = "steel-plate",amount = 65535},
		{type = "item", name = "tungsten-carbide",amount = 50000},
		{type = "item", name = "gold-foil-mesh",amount = 800},
		{type = "item", name = "omega-beam",amount = 2400},
		{type = "item", name = "omega-gear",amount = 1800}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "warp-drive-frame", amount = 1}
	},
	energy_required = 4000.0,
--	localised_description = "-----------------",
	category = "nano-fluid-factory",
	subgroup = "warp-drive-components",
    order = "m-a]",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "exotic-matter-containment-fields-generator",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/exotic-matter-containment-fields-generator.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "advanced-photon-processor",amount = 400},
		{type = "item", name = "omega-alloy",amount = 1000},
		{type = "item", name = "steel-plate",amount = 8000},
		{type = "item", name = "tungsten-carbide",amount = 5000},
		{type = "item", name = "quantum-processor",amount = 1000},
		{type = "item", name = "advanced-coil",amount = 2000},
		{type = "item", name = "gold-foil-mesh",amount = 1000},
		{type = "item", name = "supercapacitor",amount = 20000},
		{type = "item", name = "superconductor",amount = 20000},
		{type = "item", name = "omega-beam",amount = 400},
		{type = "item", name = "omega-gear",amount = 1000}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "exotic-matter-containment-fields-generator", amount = 1}
	},
	energy_required = 4000.0,
--	localised_description = "-----------------",
	category = "nano-fluid-factory",
	subgroup = "warp-drive-components",
    order = "m-b]",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "gravity-fields-generator",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/gravity-fields-generator.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "advanced-photon-processor",amount = 480},
		{type = "item", name = "omega-alloy",amount = 1200},
		{type = "item", name = "steel-plate",amount = 6800},
		{type = "item", name = "tungsten-carbide",amount = 700},
		{type = "item", name = "quantum-processor",amount = 1000},
		{type = "item", name = "advanced-coil",amount = 220},
		{type = "item", name = "gold-foil-mesh",amount = 200},
		{type = "item", name = "supercapacitor",amount = 18000},
		{type = "item", name = "superconductor",amount = 21000},
		{type = "item", name = "omega-beam",amount = 500},
		{type = "item", name = "omega-gear",amount = 1200}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "gravity-fields-generator", amount = 1}
	},
	energy_required = 4000.0,
--	localised_description = "-----------------",
	category = "nano-fluid-factory",
	subgroup = "warp-drive-components",
    order = "m-c]",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "antimatter-containment-fields-generator",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/antimatter-containment-fields-generator.png",
	enabled = false,
	ingredients = {
		{type = "item", name = "advanced-photon-processor",amount = 600},
		{type = "item", name = "omega-alloy",amount = 1800},
		{type = "item", name = "steel-plate",amount = 7200},
		{type = "item", name = "tungsten-carbide",amount = 7000},
		{type = "item", name = "quantum-processor",amount = 2000},
		{type = "item", name = "advanced-coil",amount = 2020},
		{type = "item", name = "gold-foil-mesh",amount = 800},
		{type = "item", name = "supercapacitor",amount = 20000},
		{type = "item", name = "superconductor",amount = 20000},
		{type = "item", name = "omega-beam",amount = 600},
		{type = "item", name = "omega-gear",amount = 1300}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "antimatter-containment-fields-generator", amount = 1}
	},
	energy_required = 4000.0,
--	localised_description = "-----------------",
	category = "nano-fluid-factory",
	subgroup = "warp-drive-components",
    order = "m-d]",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "singularity-core",
	type = "recipe",
    icon = "__Nexus-Graphics__/graphics/items/singularity-core.png",
	enabled = false,
	ingredients = {
		{type = "fluid", name = "antimatter",amount = 10000},
		{type = "item", name = "high-energy-crystal",amount = 8000},
		{type = "item", name = "advanced-photon-processor",amount = 1000},
		{type = "item", name = "omega-alloy",amount = 2400},
		{type = "item", name = "steel-plate",amount = 6000},
		{type = "item", name = "tungsten-carbide",amount = 2300},
		{type = "item", name = "quantum-processor",amount = 1800},
		{type = "item", name = "advanced-coil",amount = 600},
		{type = "item", name = "gold-foil-mesh",amount = 8000},
		{type = "item", name = "supercapacitor",amount = 60000},
		{type = "item", name = "superconductor",amount = 60000},
		{type = "item", name = "omega-beam",amount = 800},
		{type = "item", name = "omega-gear",amount = 600}
	},
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "singularity-core", amount = 1}
	},
	energy_required = 4000.0,
--	localised_description = "-----------------",
	category = "nano-fluid-factory",
	subgroup = "warp-drive-components",
    order = "m-e]",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
----------------------------------------------------------------
-------ASSEMBLER-------

{
	name = "atomacer",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "iron-plate",amount = 400},
		{type = "item", name = "copper-plate",amount = 200},
		{type = "item", name = "steel-plate",amount = 600},
		{type = "item", name = "processing-unit", amount = 40},
		{type = "item", name = "holmium-plate", amount = 80},
		{type = "item", name = "carbon-fiber", amount = 100},
        {type = "item", name = "lithium-plate", amount = 20}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "atomacer", amount = 1}
	},
	energy_required = 20,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "maschines",
	order = "a-c",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "atomar-separator",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "iron-plate",amount = 600},
		{type = "item", name = "copper-plate",amount = 100},
		{type = "item", name = "steel-plate",amount = 1200},
		{type = "item", name = "processing-unit", amount = 300},
		{type = "item", name = "holmium-plate", amount = 100},
		{type = "item", name = "supercapacitor", amount = 80},
		{type = "item", name = "superconductor", amount = 20},
		{type = "item", name = "quantum-processor", amount = 20},
		{type = "item", name = "carbon-fiber", amount = 60}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "atomar-separator", amount = 1}
	},
	energy_required = 20,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "maschines",
	order = "a-d",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "photon-enrichment-chamber",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "iron-plate",amount = 100},
		{type = "item", name = "copper-cable",amount = 1000},
		{type = "item", name = "steel-plate",amount = 800},
		{type = "item", name = "supercapacitor", amount = 1000},
		{type = "item", name = "superconductor", amount = 1000},
		{type = "item", name = "processing-unit", amount = 200},
		{type = "item", name = "quantum-processor", amount = 100}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "photon-enrichment-chamber", amount = 1}
	},
	energy_required = 20,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "maschines",
	order = "a-a",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "photon-enrichment-chamber-mk2",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "photon-enrichment-chamber",amount = 1},
		{type = "item", name = "omega-alloy",amount = 2},
		{type = "item", name = "advanced-coil",amount = 1},
		{type = "item", name = "omega-beam", amount = 4},
		{type = "item", name = "omega-gear", amount = 10},
		{type = "item", name = "gold-foil-mesh", amount = 10}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "photon-enrichment-chamber-mk2", amount = 1}
	},
	energy_required = 20,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "maschines",
	order = "a-b",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "atomar-assembler",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "iron-plate",amount = 100},
		{type = "item", name = "copper-plate",amount = 200},
		{type = "item", name = "steel-plate",amount = 800},
		{type = "item", name = "processing-unit", amount = 100},
		{type = "item", name = "promethium", amount = 20},
		{type = "item", name = "supercapacitor", amount = 30},
		{type = "item", name = "quantum-processor", amount = 10}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "atomar-assembler", amount = 1}
	},
	energy_required = 28,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "maschines",
	order = "a-f",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "roller-factory",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "omega-alloy",amount = 10},
		{type = "item", name = "copper-plate",amount = 100},
		{type = "item", name = "tungsten-plate", amount = 200},
		{type = "item", name = "supercapacitor", amount = 20},
		{type = "item", name = "superconductor", amount = 30},
		{type = "item", name = "diamond", amount = 10},
		{type = "item", name = "tungsten-carbide", amount = 200}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "roller-factory", amount = 1}
	},
	energy_required = 28,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "maschines",
	order = "a-h",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "nano-factory",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "omega-alloy",amount = 20},
		{type = "item", name = "copper-plate",amount = 100},
		{type = "item", name = "tungsten-plate", amount = 200},
		{type = "item", name = "supercapacitor", amount = 20},
		{type = "item", name = "superconductor", amount = 30},
		{type = "item", name = "diamond", amount = 100},
		{type = "item", name = "tungsten-carbide", amount = 200}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "nano-factory", amount = 1}
	},
	energy_required = 30,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "maschines",
	order = "a-k",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "advanced-crusher",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "omega-alloy",amount = 10},
		{type = "item", name = "copper-plate",amount = 40},
		{type = "item", name = "tungsten-plate", amount = 20},
		{type = "item", name = "supercapacitor", amount = 5},
		{type = "item", name = "superconductor", amount = 5},
		{type = "item", name = "diamond", amount = 60},
		{type = "item", name = "tungsten-carbide", amount = 10}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "advanced-crusher", amount = 1}
	},
	energy_required = 26,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "maschines",
	order = "a-g",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "matter-stabilizer",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "steel-plate",amount = 400},
		{type = "item", name = "copper-plate",amount = 40},
		{type = "item", name = "tungsten-plate", amount = 20},
		{type = "item", name = "supercapacitor", amount = 500},
		{type = "item", name = "superconductor", amount = 200},
		{type = "item", name = "quantum-processor", amount = 10},
		{type = "item", name = "tungsten-carbide", amount = 100}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "matter-stabilizer", amount = 1}
	},
	energy_required = 28,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "maschines",
	order = "a-e",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "nano-fluid-factory",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "omega-gear",amount = 40},
		{type = "item", name = "omega-beam",amount = 25},
		{type = "item", name = "omega-inductor",amount = 16},
		{type = "item", name = "omega-transformer",amount = 8},
		{type = "item", name = "advanced-photon-processor",amount = 1},
		{type = "item", name = "advanced-filter",amount = 100},
		{type = "item", name = "steel-plate",amount = 100},
		{type = "item", name = "copper-plate",amount = 50},
		{type = "item", name = "tungsten-plate", amount = 80},
		{type = "item", name = "supercapacitor", amount = 5000},
		{type = "item", name = "superconductor", amount = 2000},
		{type = "item", name = "quantum-processor", amount = 1000},
		{type = "item", name = "tungsten-carbide", amount = 200}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "nano-fluid-factory", amount = 1}
	},
	energy_required = 34,
--	localised_description = "-----------------",
	category = "nano-factory",
	subgroup = "maschines",
	order = "a-l",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "matter-activator",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "omega-gear",amount = 200},
		{type = "item", name = "omega-beam",amount = 100},
		{type = "item", name = "omega-inductor",amount = 10},
		{type = "item", name = "omega-transformer",amount = 16},
		{type = "item", name = "advanced-photon-processor",amount = 10},
		{type = "item", name = "advanced-filter",amount = 200},
		{type = "item", name = "steel-plate",amount = 1200},
		{type = "item", name = "copper-cable",amount = 5000},
		{type = "item", name = "tungsten-plate", amount = 80},
		{type = "item", name = "supercapacitor", amount = 5000},
		{type = "item", name = "superconductor", amount = 10000},
		{type = "item", name = "quantum-processor", amount = 2000},
		{type = "item", name = "lithium-plate", amount = 200},
		{type = "item", name = "photon-sensor", amount = 20},
		{type = "item", name = "tungsten-carbide", amount = 60}
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "matter-activator", amount = 1}
	},
	energy_required = 200,
--	localised_description = "-----------------",
	category = "nano-fluid-factory",
	subgroup = "maschines",
	order = "a-m",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "fusion-reactor-mk2",
	type = "recipe",
	enabled = false,
	ingredients = {
	    {type = "item", name = "fusion-reactor",amount = 1},
		{type = "item", name = "omega-gear",amount = 20},
		{type = "item", name = "omega-beam",amount = 40},
		{type = "item", name = "advanced-coil",amount = 10},
		{type = "item", name = "steel-plate",amount = 600},
		{type = "item", name = "copper-cable",amount = 200},
		{type = "item", name = "supercapacitor", amount = 200},
		{type = "item", name = "superconductor", amount = 100},
		{type = "item", name = "quantum-processor", amount = 100},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "fusion-reactor-mk2", amount = 1}
	},
	energy_required = 120,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "fusion",
	order = "h-b",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "fusion-generator-mk2",
	type = "recipe",
	enabled = false,
	ingredients = {
	    {type = "item", name = "fusion-generator",amount = 1},
		{type = "item", name = "omega-gear",amount = 10},
		{type = "item", name = "omega-beam",amount = 24},
		{type = "item", name = "advanced-coil",amount = 4},
		{type = "item", name = "steel-plate",amount = 100},
		{type = "item", name = "copper-cable",amount = 400},
		{type = "item", name = "supercapacitor", amount = 60},
		{type = "item", name = "superconductor", amount = 80},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "fusion-generator-mk2", amount = 1}
	},
	energy_required = 120,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "fusion",
	order = "h-c",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "singularity-assembler",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "omega-gear",amount = 12},
		{type = "item", name = "omega-beam",amount = 20},
		{type = "item", name = "advanced-coil",amount = 8},
		{type = "item", name = "steel-plate",amount = 800},
		{type = "item", name = "gold-wire",amount = 800},
		{type = "item", name = "supercapacitor", amount = 600},
		{type = "item", name = "superconductor", amount = 400},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "singularity-assembler", amount = 1}
	},
	energy_required = 120,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "singularity",
	order = "n-a",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "omega-substation",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "omega-gear",amount = 8},
		{type = "item", name = "omega-beam",amount = 20},
		{type = "item", name = "advanced-coil",amount = 4},
		{type = "item", name = "steel-plate",amount = 40},
		{type = "item", name = "supercapacitor", amount = 100},
		{type = "item", name = "superconductor", amount = 200},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "omega-substation", amount = 1}
	},
	energy_required = 90,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "plasma-duct",
	order = "o-b",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "omega-tank",
	type = "recipe",
	enabled = false,
	ingredients = {
	    {type = "item", name = "omega-alloy",amount = 6},
		{type = "item", name = "omega-gear",amount = 10},
		{type = "item", name = "omega-beam",amount = 20},
		{type = "item", name = "steel-plate",amount = 2000},
		{type = "item", name = "holmium-plate",amount = 800},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "omega-tank", amount = 1}
	},
	energy_required = 120,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "plasma-duct",
	order = "o-c",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "omega-accumulator",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "accumulator",amount = 1},
	    {type = "item", name = "omega-alloy",amount = 6},
		{type = "item", name = "omega-gear",amount = 4},
		{type = "item", name = "omega-beam",amount = 4},
		{type = "item", name = "steel-plate",amount = 100},
		{type = "item", name = "holmium-plate",amount = 20},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "omega-accumulator", amount = 1}
	},
	energy_required = 120,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "plasma-duct",
	order = "o-d",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "omega-accumulator-t2",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "accumulator",amount = 1},
	    {type = "item", name = "omega-alloy",amount = 6},
		{type = "item", name = "omega-gear",amount = 4},
		{type = "item", name = "omega-beam",amount = 4},
		{type = "item", name = "steel-plate",amount = 100},
		{type = "item", name = "holmium-plate",amount = 20},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "omega-accumulator-t2", amount = 1}
	},
	energy_required = 120,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "plasma-duct",
	order = "o-d",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "omega-accumulator-t3",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "accumulator",amount = 1},
	    {type = "item", name = "omega-alloy",amount = 6},
		{type = "item", name = "omega-gear",amount = 4},
		{type = "item", name = "omega-beam",amount = 4},
		{type = "item", name = "steel-plate",amount = 100},
		{type = "item", name = "holmium-plate",amount = 20},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "omega-accumulator-t3", amount = 1}
	},
	energy_required = 120,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "plasma-duct",
	order = "o-d",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "zero-point-energy-engine-core",
	type = "recipe",
	enabled = false,
	ingredients = {
	    {type = "item", name = "omega-alloy",amount = 800},
		{type = "item", name = "omega-gear",amount = 100},
		{type = "item", name = "omega-beam",amount = 120},
		{type = "item", name = "steel-plate",amount = 2000},
		{type = "item", name = "holmium-plate",amount = 800},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "zero-point-energy-engine-core", amount = 1}
	},
	energy_required = 120,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "fusion",
	order = "h-e",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "zero-point-energy-engine-injector-down",
	type = "recipe",
	enabled = false,
	ingredients = {
	    {type = "item", name = "omega-alloy",amount = 100},
		{type = "item", name = "omega-gear",amount = 40},
		{type = "item", name = "omega-beam",amount = 20},
		{type = "item", name = "steel-plate",amount = 2000},
		{type = "item", name = "holmium-plate",amount = 800},
		{type = "item", name = "omega-module-mk1",amount = 4},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "zero-point-energy-engine-injector-down", amount = 1}
	},
	energy_required = 120,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "fusion",
	order = "h-f",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "zero-point-energy-engine-injector-up",
	type = "recipe",
	enabled = false,
	ingredients = {
	    {type = "item", name = "omega-alloy",amount = 100},
		{type = "item", name = "omega-gear",amount = 40},
		{type = "item", name = "omega-beam",amount = 20},
		{type = "item", name = "steel-plate",amount = 2000},
		{type = "item", name = "holmium-plate",amount = 800},
		{type = "item", name = "omega-transformer",amount = 8},
		{type = "item", name = "omega-inductor",amount = 10},
		{type = "item", name = "advanced-filter",amount = 20},
		{type = "item", name = "advanced-photon-processor",amount = 2},
		{type = "item", name = "omega-module-mk3",amount = 4},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "zero-point-energy-engine-injector-up", amount = 1}
	},
	energy_required = 120,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "fusion",
	order = "h-g",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "zero-point-energy-engine-injector-left",
	type = "recipe",
	enabled = false,
	ingredients = {
		{type = "item", name = "omega-alloy",amount = 100},
		{type = "item", name = "omega-gear",amount = 40},
		{type = "item", name = "omega-beam",amount = 20},
		{type = "item", name = "steel-plate",amount = 2000},
		{type = "item", name = "holmium-plate",amount = 800},
		{type = "item", name = "omega-transformer",amount = 8},
		{type = "item", name = "omega-inductor",amount = 10},
		{type = "item", name = "advanced-filter",amount = 20},
		{type = "item", name = "omega-module-mk2",amount = 4},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "zero-point-energy-engine-injector-left", amount = 1}
	},
	energy_required = 120,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "fusion",
	order = "h-h",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
{
	name = "zero-point-energy-engine-injector-right",
	type = "recipe",
	enabled = false,
	ingredients = {
	    {type = "item", name = "omega-alloy",amount = 100},
		{type = "item", name = "omega-gear",amount = 40},
		{type = "item", name = "omega-beam",amount = 20},
		{type = "item", name = "steel-plate",amount = 2000},
		{type = "item", name = "holmium-plate",amount = 800},
		{type = "item", name = "omega-transformer",amount = 8},
		{type = "item", name = "omega-inductor",amount = 10},
		{type = "item", name = "advanced-filter",amount = 20},
		{type = "item", name = "advanced-photon-processor",amount = 10},
		{type = "item", name = "critical-photon-fuel-rod",amount = 4},
		{type = "item", name = "omega-module-mk4",amount = 4},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "zero-point-energy-engine-injector-right", amount = 1}
	},
	energy_required = 120,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "fusion",
	order = "h-i",
	--always_show_made_in = true,
	allow_productivity = false,
	allow_quality = false,
},
----------------------------------------------------------------
--[[
{
	name = "high-pressure-acid-generator",
	type = "recipe",
	enabled = false,
	ingredients = {
	    {type = "item", name = "steam-turbine",amount = 1},
		{type = "item", name = "steel-plate",amount = 100},
		{type = "item", name = "copper-cable",amount = 800},
		{type = "item", name = "supercapacitor", amount = 28},
		{type = "item", name = "superconductor", amount = 10},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "high-pressure-acid-generator", amount = 1}
	},
	energy_required = 2,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "fusion",
	order = "h-a",
	--always_show_made_in = true,
	allow_productivity = false,
},
--]]
----------------------------------------------------------------
----------------------------------------------------------------
-------Science-------

{
	type = "recipe",
    name = "promethium-882-science-pack",
    energy_required = 8,
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
    enabled = false,
    allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
    category = "cryogenics",
	subgroup = "omega-science-pack",
	order = "w",
    ingredients =
    {
      {type = "item", name = "omega-alloy", amount = 2},
	  {type = "fluid", name = "high-energetic-photonen-fluid", amount = 100},
      {type = "item", name = "quantum-processor", amount = 4},
	  {type = "item", name = "gold-plate", amount = 4},
	  {type = "item", name = "platin-plate", amount = 4},
      {type = "item", name = "biter-egg", amount = 4}
    },
    results = {{type="item", name="promethium-882-science-pack", amount=1}},
    crafting_machine_tint =
    {
      primary = {r = 0, g = 0, b = 0.1, a = 1},
      secondary = {r = 0, g = 0, b = 0.4, a = 1},
      tertiary = {r = 0.1, g = 0.1, b = 0.4, a = 1},
      quaternary = {r = 0, g = 0, b = 0.1, a = 1},
    }
},
----------------------------------------------------------------
{
	type = "recipe",
    name = "antimatter-science-pack",
    energy_required = 80,
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
    enabled = false,
    allow_productivity = true,
	allowed_module_categories = {"speed", "quality", "omega"},
    category = "nano-fluid-factory",
	subgroup = "omega-science-pack",
	order = "x",
    ingredients =
    {
      {type = "item", name = "critical-photon-cube", amount = 4},
	  {type = "fluid", name = "photonen-energy-fluid", amount = 1000},
      {type = "item", name = "advanced-photon-processor", amount = 1},
    },
    results = {{type="item", name="antimatter-science-pack", amount=2}},
    crafting_machine_tint =
    {
      primary = {r = 0, g = 0, b = 0.1, a = 1},
      secondary = {r = 0, g = 0, b = 0.4, a = 1},
      tertiary = {r = 0.1, g = 0.1, b = 0.4, a = 1},
      quaternary = {r = 0, g = 0, b = 0.1, a = 1},
    }
},
----------------------------------------------------------------
{
	type = "recipe",
    name = "omega-automation-science-pack",
    energy_required = 8,
    enabled = false,
    allow_productivity = false,
	allowed_module_categories = {"speed"},
    category = "crafting-with-fluid",
	subgroup = "omega-science-pack",
	order = "l",
    ingredients =
    {
      {type = "item", name = "automation-science-pack", amount = 10}
	  --{type = "fluid", name = "high-energetic-photonen-fluid", amount = 10}
    },
    results = {{type="item", name="omega-automation-science-pack", amount=10}},
},
----------------------------------------------------------------
{
	type = "recipe",
    name = "omega-logistic-science-pack",
    energy_required = 8,
    enabled = false,
    allow_productivity = false,
	allowed_module_categories = {"speed"},
    category = "crafting-with-fluid",
	subgroup = "omega-science-pack",
	order = "m",
    ingredients =
    {
      {type = "item", name = "logistic-science-pack", amount = 10}
	  --{type = "fluid", name = "high-energetic-photonen-fluid", amount = 10}
    },
    results = {{type="item", name="omega-logistic-science-pack", amount=10}},
},
----------------------------------------------------------------
{
	type = "recipe",
    name = "omega-military-science-pack",
    energy_required = 8,
    enabled = false,
    allow_productivity = false,
	allowed_module_categories = {"speed"},
    category = "crafting-with-fluid",
	subgroup = "omega-science-pack",
	order = "n",
    ingredients =
    {
      {type = "item", name = "military-science-pack", amount = 10}
	  --{type = "fluid", name = "high-energetic-photonen-fluid", amount = 10}
    },
    results = {{type="item", name="omega-military-science-pack", amount=10}},
},
----------------------------------------------------------------
{
	type = "recipe",
    name = "omega-chemical-science-pack",
    energy_required = 8,
    enabled = false,
    allow_productivity = false,
	allowed_module_categories = {"speed"},
    category = "crafting-with-fluid",
	subgroup = "omega-science-pack",
	order = "o",
    ingredients =
    {
      {type = "item", name = "chemical-science-pack", amount = 10}
	  --{type = "fluid", name = "high-energetic-photonen-fluid", amount = 10}
    },
    results = {{type="item", name="omega-chemical-science-pack", amount=10}},
},
----------------------------------------------------------------
{
	type = "recipe",
    name = "omega-production-science-pack",
    energy_required = 8,
    enabled = false,
    allow_productivity = false,
	allowed_module_categories = {"speed"},
    category = "crafting-with-fluid",
	subgroup = "omega-science-pack",
	order = "p",
    ingredients =
    {
      {type = "item", name = "production-science-pack", amount = 10}
	  --{type = "fluid", name = "high-energetic-photonen-fluid", amount = 10}
    },
    results = {{type="item", name="omega-production-science-pack", amount=10}},
},
----------------------------------------------------------------
{
	type = "recipe",
    name = "omega-utility-science-pack",
    energy_required = 8,
    enabled = false,
    allow_productivity = false,
	allowed_module_categories = {"speed"},
    category = "crafting-with-fluid",
	subgroup = "omega-science-pack",
	order = "q",
    ingredients =
    {
      {type = "item", name = "utility-science-pack", amount = 10}
	  --{type = "fluid", name = "high-energetic-photonen-fluid", amount = 10}
    },
    results = {{type="item", name="omega-utility-science-pack", amount=10}},
},
----------------------------------------------------------------
{
	type = "recipe",
    name = "omega-space-science-pack",
    energy_required = 8,
    enabled = false,
    allow_productivity = false,
	allowed_module_categories = {"speed"},
    category = "crafting-with-fluid",
	subgroup = "omega-science-pack",
	order = "r",
    ingredients =
    {
      {type = "item", name = "space-science-pack", amount = 10}
	  --{type = "fluid", name = "high-energetic-photonen-fluid", amount = 10}
    },
    results = {{type="item", name="omega-space-science-pack", amount=10}},
},
----------------------------------------------------------------
{
	type = "recipe",
    name = "omega-metallurgic-science-pack",
    energy_required = 8,
    enabled = false,
    allow_productivity = false,
	allowed_module_categories = {"speed"},
    category = "crafting-with-fluid",
	subgroup = "omega-science-pack",
	order = "s",
    ingredients =
    {
      {type = "item", name = "metallurgic-science-pack", amount = 10}
	  --{type = "fluid", name = "high-energetic-photonen-fluid", amount = 10}
    },
    results = {{type="item", name="omega-metallurgic-science-pack", amount=10}},
},
----------------------------------------------------------------
{
	type = "recipe",
    name = "omega-agricultural-science-pack",
    energy_required = 8,
    enabled = false,
    allow_productivity = false,
	allowed_module_categories = {"speed"},
    category = "crafting-with-fluid",
	subgroup = "omega-science-pack",
	order = "t",
    ingredients =
    {
      {type = "item", name = "agricultural-science-pack", amount = 10}
	  --{type = "fluid", name = "high-energetic-photonen-fluid", amount = 10}
    },
    results = {{type="item", name="omega-agricultural-science-pack", amount=10}},
},
----------------------------------------------------------------
{
	type = "recipe",
    name = "omega-electromagnetic-science-pack",
    energy_required = 8,
    enabled = false,
    allow_productivity = false,
	allowed_module_categories = {"speed"},
    category = "crafting-with-fluid",
	subgroup = "omega-science-pack",
	order = "u",
    ingredients =
    {
      {type = "item", name = "electromagnetic-science-pack", amount = 10}
	  --{type = "fluid", name = "high-energetic-photonen-fluid", amount = 10}
    },
    results = {{type="item", name="omega-electromagnetic-science-pack", amount=10}},
},
----------------------------------------------------------------
{
	type = "recipe",
    name = "omega-cryogenic-science-pack",
    energy_required = 8,
    enabled = false,
    allow_productivity = false,
	allowed_module_categories = {"speed"},
    category = "crafting-with-fluid",
	subgroup = "omega-science-pack",
	order = "v",
    ingredients =
    {
      {type = "item", name = "cryogenic-science-pack", amount = 10}
	  --{type = "fluid", name = "high-energetic-photonen-fluid", amount = 10}
    },
    results = {{type="item", name="omega-cryogenic-science-pack", amount=10}},
},
--]]
----------------------------------------------------------------
----------------------------------------------------------------
-------LAB-------

{
	name = "omega-lab",
	type = "recipe",
	enabled = false,
	ingredients = {
	    {type = "item", name = "biolab",amount = 1},
		{type = "item", name = "omega-alloy",amount = 20},
		{type = "item", name = "tempered-glass",amount = 200},
		{type = "item", name = "steel-plate",amount = 180},
		{type = "item", name = "supercapacitor", amount = 12},
		{type = "item", name = "superconductor", amount = 40},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "omega-lab", amount = 1}
	},
	energy_required = 120,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "nexus-labs",
	order = "k-a",
	--always_show_made_in = true,
	allow_productivity = false,
},

----------------------------------------------------------------
----------------------------------------------------------------
-------MODULE-------

{
	name = "omega-beacon",
	type = "recipe",
	enabled = false,
	ingredients = {
	    --{type = "item", name = "omega-module-frame",amount = 1},
		{type = "item", name = "omega-gear",amount = 8},
		{type = "item", name = "omega-beam",amount = 4},
		{type = "item", name = "tempered-glass",amount = 10},
		{type = "item", name = "steel-plate",amount = 20},
		{type = "item", name = "gold-wire",amount = 20},
		{type = "item", name = "supercapacitor", amount = 16},
		{type = "item", name = "superconductor", amount = 24},
		{type = "item", name = "gold-foil-mesh", amount = 2},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "omega-beacon", amount = 1}
	},
	energy_required = 40,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "nexus-module",
	order = "l-a",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "omega-effectivity-module",
	type = "recipe",
	enabled = false,
	ingredients = {
	    --{type = "item", name = "omega-module-frame",amount = 1},
		{type = "item", name = "omega-gear",amount = 10},
		{type = "item", name = "omega-beam",amount = 4},
		{type = "item", name = "tempered-glass",amount = 8},
		{type = "item", name = "steel-plate",amount = 100},
		{type = "item", name = "gold-wire",amount = 100},
		{type = "item", name = "supercapacitor", amount = 60},
		{type = "item", name = "superconductor", amount = 80},
		{type = "item", name = "gold-foil-mesh", amount = 4},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "omega-effectivity-module", amount = 1}
	},
	energy_required = 80,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "nexus-module",
	order = "l-b",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "omega-module-mk1",
	type = "recipe",
	enabled = false,
	ingredients = {
	    --{type = "item", name = "omega-module-frame",amount = 1},
		{type = "item", name = "omega-gear",amount = 10},
		{type = "item", name = "omega-beam",amount = 4},
		{type = "item", name = "tempered-glass",amount = 10},
		{type = "item", name = "steel-plate",amount = 20},
		{type = "item", name = "gold-wire",amount = 40},
		{type = "item", name = "supercapacitor", amount = 16},
		{type = "item", name = "superconductor", amount = 24},
		{type = "item", name = "gold-foil-mesh", amount = 2},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "omega-module-mk1", amount = 1}
	},
	energy_required = 80,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "nexus-module",
	order = "l-d",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "omega-module-mk2",
	type = "recipe",
	enabled = false,
	ingredients = {
	    {type = "item", name = "omega-module-mk1",amount = 3},
		{type = "item", name = "omega-gear",amount = 20},
		{type = "item", name = "omega-beam",amount = 16},
		{type = "item", name = "tempered-glass",amount = 12},
		{type = "item", name = "steel-plate",amount = 28},
		{type = "item", name = "gold-wire",amount = 140},
		{type = "item", name = "supercapacitor", amount = 18},
		{type = "item", name = "superconductor", amount = 28},
		{type = "item", name = "advanced-coil", amount = 4},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "omega-module-mk2", amount = 1}
	},
	energy_required = 80,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "nexus-module",
	order = "l-e",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "omega-module-mk3",
	type = "recipe",
	enabled = false,
	ingredients = {
	    {type = "item", name = "omega-module-mk2",amount = 3},
		{type = "item", name = "omega-gear",amount = 20},
		{type = "item", name = "omega-beam",amount = 16},
		{type = "item", name = "photon-processor",amount = 1},
		{type = "item", name = "steel-plate",amount = 10},
		{type = "item", name = "gold-wire",amount = 180},
		{type = "item", name = "advanced-filter", amount = 2},
		{type = "item", name = "omega-inductor", amount = 2},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "omega-module-mk3", amount = 1}
	},
	energy_required = 80,
--	localised_description = "-----------------",
	category = "nano-factory",
	subgroup = "nexus-module",
	order = "l-f",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "omega-module-mk4",
	type = "recipe",
	enabled = false,
	ingredients = {
	    {type = "item", name = "omega-module-mk3",amount = 3},
		{type = "item", name = "omega-gear",amount = 100},
		{type = "item", name = "omega-beam",amount = 120},
		{type = "item", name = "photon-sensor",amount = 4},
		{type = "item", name = "steel-plate",amount = 280},
		{type = "item", name = "gold-wire",amount = 1200},
		{type = "item", name = "advanced-photon-processor", amount = 1},
		{type = "item", name = "omega-transformer", amount = 1},
		{type = "item", name = "thermal-plate", amount = 26},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "omega-module-mk4", amount = 1}
	},
	energy_required = 80,
--	localised_description = "-----------------",
	category = "nano-factory",
	subgroup = "nexus-module",
	order = "l-g",
	--always_show_made_in = true,
	allow_productivity = false,
},
----------------------------------------------------------------
{
	name = "omega-quality-module",
	type = "recipe",
	enabled = false,
	ingredients = {
	    --{type = "item", name = "omega-module-frame",amount = 1},
		{type = "item", name = "omega-gear",amount = 200},
		{type = "item", name = "omega-beam",amount = 120},
		{type = "item", name = "tempered-glass",amount = 180},
		{type = "item", name = "steel-plate",amount = 800},
		{type = "item", name = "gold-wire",amount = 800},
		{type = "item", name = "supercapacitor", amount = 80},
		{type = "item", name = "superconductor", amount = 84},
		{type = "item", name = "gold-foil-mesh", amount = 24},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "omega-quality-module", amount = 1}
	},
	energy_required = 80,
--	localised_description = "-----------------",
	category = "crafting-with-fluid",
	subgroup = "nexus-module",
	order = "l-c",
	--always_show_made_in = true,
	allow_productivity = false,
},
--------------------------------------------------------------------------------------------------------------------------------------------
})
