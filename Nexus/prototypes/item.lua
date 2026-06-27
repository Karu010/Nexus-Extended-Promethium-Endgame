--item.lua --default_import_location = "nexus",

local item_sounds = require("__base__.prototypes.item_sounds")

local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")

data:extend({

----------------------------------------------------------------
----------------------------------------------------------------
-------FLUID-------
--[[
{
    type = "fluid",
    name = "sulfuric-acid",
    subgroup = "fluid",
    default_temperature = 25,
	fuel_value = "0.1kJ",
    base_color = {0.75, 0.65, 0.1},
    flow_color = {0.7, 1, 0.1},
    icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
    order = "a[fluid]-b[oil]-f[sulfuric-acid]"
},
--]]
----------------------------------------------------------------
{
	name = "liquid-ionit-matter",
	type = "fluid",
	default_temperature = 3000,
	auto_barrel = false,
	icon = "__Nexus-Graphics__/graphics/items/liquid-ionit-matter.png",
	icon_size = 64,
	subgroup = "nexus-fluid",
	order = "c-c",
	base_color = {0.8, 0.15, 0.05},
	flow_color = {0.9, 0.2, 0.07}
},
----------------------------------------------------------------
{
	name = "liquid-coal-matter",
	type = "fluid",
	default_temperature = 3000,
	auto_barrel = false,
	icon = "__Nexus-Graphics__/graphics/items/liquid-coal-matter.png",
	icon_size = 64,
	subgroup = "nexus-fluid",
	order = "c-e",
	base_color = {0.0, 0.0, 0.00},
	flow_color = {0.0, 0.0, 0.00}
},
----------------------------------------------------------------
{
	name = "high-energetic-photonen-fluid",
	type = "fluid",
	default_temperature = 3000,
	auto_barrel = false,
	fuel_value = "7960kJ",
	icon = "__Nexus-Graphics__/graphics/items/high-energetic-photonen-fluid.png",
	icon_size = 64,
	subgroup = "nexus-fluid",
	order = "c-a",
	base_color = {0.8, 0.15, 0.05},
	flow_color = {0.9, 0.2, 0.07}
},
----------------------------------------------------------------
{
	name = "photonen-energy-fluid",
	type = "fluid",
    default_temperature = 1000000,
    max_temperature = 10000000,
    heat_capacity = "25J",
	auto_barrel = false,
	icon = "__Nexus-Graphics__/graphics/items/photonen-energy-fluid.png",
	icon_size = 64,
	subgroup = "nexus-labs",
	order = "k-b",
	base_color = {0.8, 0.15, 0.05},
	flow_color = {0.9, 0.2, 0.07}
},
----------------------------------------------------------------
{
	name = "raw-matter",
	type = "fluid",
	default_temperature = 60,
	auto_barrel = false,
	icon = "__Nexus-Graphics__/graphics/items/raw-matter.png",
	icon_size = 64,
	subgroup = "nexus-fluid",
	order = "c-d",
	base_color = {0.33, 0.33, 0.33},
	flow_color = {0.35, 0.35, 0.35}
},
----------------------------------------------------------------
{
	name = "molten-gold",
	type = "fluid",
	default_temperature = 2000,
	auto_barrel = false,
	icon = "__Nexus-Graphics__/graphics/items/molten-gold.png",
	icon_size = 64,
	subgroup = "nexus-fluid",
	order = "c-f",
	base_color = {0.84, 0.69, 0.18},
	flow_color = {0.92, 0.71, 0.20}
},
----------------------------------------------------------------
{
	name = "molten-platin",
	type = "fluid",
	default_temperature = 2000,
	auto_barrel = false,
	icon = "__Nexus-Graphics__/graphics/items/molten-platin.png",
	icon_size = 64,
	subgroup = "nexus-fluid",
	order = "c-g",
	base_color = {0.42, 0.52, 0.50},
	flow_color = {0.44, 0.54, 0.52}
},
----------------------------------------------------------------
{
	name = "antimatter",
	type = "fluid",
	default_temperature = 60,
	auto_barrel = false,
	fuel_value = "100TJ",
	icon = "__Nexus-Graphics__/graphics/items/antimatter.png",
	icon_size = 64,
	subgroup = "nexus-fluid",
	order = "c-h",
	base_color = {0.25, 0.0, 0.502},
	flow_color = {0.27, 0.02, 0.522}
},
----------------------------------------------------------------
{
	name = "exotic-matter",
	type = "fluid",
	default_temperature = 60,
	auto_barrel = false,
	fuel_value = "100TJ",
	icon = "__Nexus-Graphics__/graphics/items/exotic-matter.png",
	icon_size = 64,
	subgroup = "nexus-fluid",
	order = "c-i",
	base_color = {0.98, 0.98, 0.98},
	flow_color = {1.0, 1.0, 1.0}
},
----------------------------------------------------------------
--[[
{
	name = "magma-energy",
	type = "fluid",
	default_temperature = 3000,
	auto_barrel = false,
	icon = "__Nexus-Graphics__/graphics/items/magma-energy.png",        -----------------------work in progress--------------------------
	icon_size = 64,
	subgroup = "magma-energy-fluid",
	order = "b-a",
	base_color = {0.8, 0.15, 0.05},
	flow_color = {0.9, 0.2, 0.07}
},
--]]
----------------------------------------------------------------
{
	name = "zero-point-energy",
	type = "fluid",
	default_temperature = 3000,
	auto_barrel = false,
	--fuel_value = "416.6666666666667MJ", --80 GW max
	fuel_value = "1GJ", -- 240 GW max
	icon = "__Nexus-Graphics__/graphics/items/zero-point-energy-anti-proton.png",
	icon_size = 64,
	subgroup = "fusion",
	order = "h-j",
	base_color = {0.8, 0.15, 0.05},
	flow_color = {0.9, 0.2, 0.07}
},

----------------------------------------------------------------
----------------------------------------------------------------
-------Items-------

{
    type = "item",
    name = "photon-stream-thruster",
    icon = "__Nexus-Graphics__/graphics/items/photon-stream-thruster.png",
    subgroup = "thruster",
    order = "g-c",
    inventory_move_sound = space_age_item_sounds.rocket_inventory_move,
    pick_sound = space_age_item_sounds.rocket_inventory_pickup,
    drop_sound = space_age_item_sounds.rocket_inventory_move,
    place_result = "photon-stream-thruster",
    stack_size = 10,
    weight = 200*kg
},
----------------------------------------------------------------
{
    type = "item",
    name = "warp-drive-engine",
    icon = "__Nexus-Graphics__/graphics/items/warp-drive-engine.png",
    subgroup = "thruster",
    order = "g-d]",
    inventory_move_sound = space_age_item_sounds.rocket_inventory_move,
    pick_sound = space_age_item_sounds.rocket_inventory_pickup,
    drop_sound = space_age_item_sounds.rocket_inventory_move,
    place_result = "warp-drive-engine",
    stack_size = 1,
    weight = 1000*kg
},
----------------------------------------------------------------
{
	name = "omega-canister",
	type = "item",
	stack_size = 100,
	weight = 50*kg,
	icon = "__Nexus-Graphics__/graphics/items/omega-canister.png",
	icon_size = 64,
	subgroup = "thruster",
	order = "g-a",
},
----------------------------------------------------------------
{
	name = "high-energetic-photonen-fluid-canister",
	type = "item",
	fuel_value = "3600MJ",
	fuel_top_speed_multiplier = 2.0,
	fuel_acceleration_multiplier = 1,
    fuel_category = "photon-fuel",
	burnt_result = "omega-canister",
	stack_size = 100,
	weight = 50*kg,
	icon = "__Nexus-Graphics__/graphics/items/high-energetic-photonen-fluid-canister.png",
	icon_size = 64,
	subgroup = "thruster",
	order = "g-b",
},
----------------------------------------------------------------
{
	name = "gold-plate",
	type = "item",
	stack_size = 200,
	weight = 5*kg,
	icon = "__Nexus-Graphics__/graphics/items/gold-plate.png",
	icon_size = 64,
	subgroup = "components",
	order = "d-f",
},
----------------------------------------------------------------
{
	name = "platin-plate",
	type = "item",
	stack_size = 200,
	weight = 5*kg,
	icon = "__Nexus-Graphics__/graphics/items/platin-plate.png",
	icon_size = 64,
	subgroup = "components",
	order = "d-g",
},
----------------------------------------------------------------
{
	name = "omega-alloy",
	type = "item",
	stack_size = 200,
	weight = 10*kg,
	icon = "__Nexus-Graphics__/graphics/items/omega-alloy.png",
	icon_size = 64,
	subgroup = "components",
	order = "d-h",
},
----------------------------------------------------------------
{
	name = "critical-photon-cube",
	type = "item",
	stack_size = 1,
	icon = "__Nexus-Graphics__/graphics/items/critical-photon-cube.png",
	icon_size = 64,
	subgroup = "critical-components",
	order = "f-a",
	weight = 2000*kg,
	fuel_category = "photon-cube-energy",
    fuel_value = "2000MJ"
},
----------------------------------------------------------------
{
	name = "gold-wire",
	type = "item",
	stack_size = 100,
	weight = 5*kg,
	icon = "__Nexus-Graphics__/graphics/items/gold-wire.png",
	icon_size = 64,
	subgroup = "components",
	order = "d-i",
},
----------------------------------------------------------------
{
	name = "gold-foil",
	type = "item",
	stack_size = 100,
	weight = 10*kg,
	icon = "__Nexus-Graphics__/graphics/items/gold-foil-2.png",
	icon_size = 64,
	subgroup = "components",
	order = "d-j",
    pictures =
    {
      { size = 64, filename = "__Nexus-Graphics__/graphics/items/gold-foil-1.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__Nexus-Graphics__/graphics/items/gold-foil-2.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__Nexus-Graphics__/graphics/items/gold-foil-3.png", scale = 0.5, mipmap_count = 4 }
    },
},
----------------------------------------------------------------
{
	name = "gold-foil-mesh",
	type = "item",
	stack_size = 100,
	weight = 10*kg,
	icon = "__Nexus-Graphics__/graphics/items/gold-foil-mesh.png",
	icon_size = 64,
	subgroup = "components",
	order = "d-m",
},
----------------------------------------------------------------
{
	name = "platin-mesh",
	type = "item",
	stack_size = 100,
	weight = 10*kg,
	icon = "__Nexus-Graphics__/graphics/items/platin-mesh.png",
	icon_size = 64,
	subgroup = "components",
	order = "d-k",
},
----------------------------------------------------------------
{
	name = "omega-gear",
	type = "item",
	stack_size = 100,
	weight = 10*kg,
	icon = "__Nexus-Graphics__/graphics/items/omega-gear.png",
	icon_size = 64,
	subgroup = "components",
	order = "d-o",
},
----------------------------------------------------------------
{
	name = "omega-beam",
	type = "item",
	stack_size = 100,
	weight = 20*kg,
	icon = "__Nexus-Graphics__/graphics/items/omega-beam.png",
	icon_size = 64,
	subgroup = "components",
	order = "d-p",
},
----------------------------------------------------------------
{
	name = "organic-mesh",
	type = "item",
	stack_size = 100,
	weight = 5*kg,
	icon = "__Nexus-Graphics__/graphics/items/organic-mesh-1.png",
	icon_size = 64,
	subgroup = "components",
	order = "d-l",
    pictures =
    {
      { size = 64, filename = "__Nexus-Graphics__/graphics/items/organic-mesh-1.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__Nexus-Graphics__/graphics/items/organic-mesh-2.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__Nexus-Graphics__/graphics/items/organic-mesh-3.png", scale = 0.5, mipmap_count = 4 }
    },
	spoil_ticks = 0.5 * hour,
    spoil_result = "spoilage",
},
----------------------------------------------------------------
{
	name = "advanced-filter",
	type = "item",
	stack_size = 100,
	weight = 20*kg,
	icon = "__Nexus-Graphics__/graphics/items/advanced-filter.png",
	icon_size = 64,
	subgroup = "advanced-components",
	order = "e-a",
},
----------------------------------------------------------------
{
	name = "advanced-coil",
	type = "item",
	stack_size = 100,
	weight = 20*kg,
	icon = "__Nexus-Graphics__/graphics/items/advanced-coil.png",
	icon_size = 64,
	subgroup = "components",
	order = "d-n",
},
----------------------------------------------------------------
{
	name = "promethium-lens",
	type = "item",
	stack_size = 100,
	weight = 20*kg,
	icon = "__Nexus-Graphics__/graphics/items/promethium-lens.png",
	icon_size = 64,
	subgroup = "advanced-components",
	order = "e-i",
},
----------------------------------------------------------------
{
	name = "silica-rich-sand",
	type = "item",
	stack_size = 100,
	weight = 10*kg,
	icon = "__Nexus-Graphics__/graphics/items/silica-rich-sand.png",
	icon_size = 64,
	subgroup = "components",
	order = "d-d",
},
----------------------------------------------------------------
{
	name = "tempered-glass",
	type = "item",
	stack_size = 100,
	weight = 20*kg,
	icon = "__Nexus-Graphics__/graphics/items/tempered-glass.png",
	icon_size = 64,
	subgroup = "components",
	order = "d-e",
},
----------------------------------------------------------------
{
	name = "electronic-triode",
	type = "item",
	stack_size = 100,
	weight = 20*kg,
	icon = "__Nexus-Graphics__/graphics/items/electronic-triode.png",
	icon_size = 64,
	subgroup = "advanced-components",
	order = "e-d",
},
----------------------------------------------------------------
{
	name = "thermal-plate",
	type = "item",
	stack_size = 100,
	weight = 20*kg,
	icon = "__Nexus-Graphics__/graphics/items/thermal-plate.png",
	icon_size = 64,
	subgroup = "advanced-components",
	order = "e-h",
},
----------------------------------------------------------------
{
	name = "omega-inductor",
	type = "item",
	stack_size = 100,
	weight = 20*kg,
	icon = "__Nexus-Graphics__/graphics/items/omega-inductor.png",
	icon_size = 64,
	subgroup = "advanced-components",
	order = "e-f",
},
----------------------------------------------------------------
{
	name = "omega-transformer",
	type = "item",
	stack_size = 100,
	weight = 20*kg,
	icon = "__Nexus-Graphics__/graphics/items/omega-transformer.png",
	icon_size = 64,
	subgroup = "advanced-components",
	order = "e-g",
},
----------------------------------------------------------------
{
	name = "electronic-memory",
	type = "item",
	stack_size = 100,
	weight = 20*kg,
	icon = "__Nexus-Graphics__/graphics/items/electronic-memory.png",
	icon_size = 64,
	subgroup = "advanced-components",
	order = "e-c",
},
----------------------------------------------------------------
{
	name = "advanced-microchip",
	type = "item",
	stack_size = 100,
	weight = 20*kg,
	icon = "__Nexus-Graphics__/graphics/items/advanced-microchip.png",
	icon_size = 64,
	subgroup = "advanced-components",
	order = "e-b",
},
----------------------------------------------------------------
{
	name = "photon-chip",
	type = "item",
	stack_size = 100,
	weight = 20*kg,
	icon = "__Nexus-Graphics__/graphics/items/photon-chip.png",
	icon_size = 64,
	subgroup = "advanced-components",
	order = "e-e",
},
----------------------------------------------------------------
{
	name = "photon-processor",
	type = "item",
	stack_size = 100,
	weight = 20*kg,
	icon = "__Nexus-Graphics__/graphics/items/photon-processor.png",
	icon_size = 64,
	subgroup = "advanced-components",
	order = "e-k",
},
----------------------------------------------------------------
{
	name = "photon-sensor",
	type = "item",
	stack_size = 100,
	weight = 20*kg,
	icon = "__Nexus-Graphics__/graphics/items/photon-sensor.png",
	icon_size = 64,
	subgroup = "advanced-components",
	order = "e-j",
},
----------------------------------------------------------------
{
	name = "advanced-photon-processor",
	type = "item",
	stack_size = 100,
	weight = 20*kg,
	icon = "__Nexus-Graphics__/graphics/items/advanced-photon-processor.png",
	icon_size = 64,
	subgroup = "advanced-components",
	order = "e-l",
},
----------------------------------------------------------------
{
	name = "graphit",
	type = "item",
	stack_size = 100,
	weight = 10*kg,
	icon = "__Nexus-Graphics__/graphics/items/graphit-1.png",
	icon_size = 64,
	subgroup = "components",
	order = "d-b",
},
----------------------------------------------------------------
{
	name = "empty-fuel-rod",
	type = "item",
	stack_size = 50,
	weight = 200*kg,
	icon = "__Nexus-Graphics__/graphics/items/empty-fuel-rod.png",
	icon_size = 64,
	subgroup = "critical-components",
	order = "f-b",
},
----------------------------------------------------------------
{
	name = "critical-photon-fuel-rod",
	type = "item",
	stack_size = 1,
	weight = 200*kg,
	icon = "__Nexus-Graphics__/graphics/items/critical-photon-fuel-rod.png",
	icon_size = 64,
	subgroup = "critical-components",
	order = "f-c",
},
----------------------------------------------------------------
{
	name = "antimatter-fuel-rod",
	type = "item",
	stack_size = 1,
	weight = 200*kg,
	icon = "__Nexus-Graphics__/graphics/items/antimatter-fuel-rod.png",
	icon_size = 64,
	subgroup = "critical-components",
	order = "f-d",
},
----------------------------------------------------------------
{
	name = "exotic-matter-fuel-rod",
	type = "item",
	stack_size = 1,
	weight = 200*kg,
	icon = "__Nexus-Graphics__/graphics/items/exotic-matter-fuel-rod.png",
	icon_size = 64,
	subgroup = "critical-components",
	order = "f-e",
},
----------------------------------------------------------------
{
	name = "singularity-crystal-core-13",
	type = "item",
	stack_size = 1,
	weight = 200*kg,
	icon = "__Nexus-Graphics__/graphics/items/singularity-crystal-core-13.png",
	icon_size = 64,
	subgroup = "singularity",
	order = "n-a",
	spoil_ticks = 1 * minute,
    spoil_result = "stone",
},
----------------------------------------------------------------
{
	name = "singularity-crystal-core-65",
	type = "item",
	stack_size = 1,
	weight = 200*kg,
	icon = "__Nexus-Graphics__/graphics/items/singularity-crystal-core-65.png",
	icon_size = 64,
	subgroup = "singularity",
	order = "n-b",
	spoil_ticks = 0.9 * minute,
    spoil_result = "singularity-crystal-core-13",
},
----------------------------------------------------------------
{
	name = "singularity-crystal-core-119",
	type = "item",
	stack_size = 1,
	weight = 200*kg,
	icon = "__Nexus-Graphics__/graphics/items/singularity-crystal-core-119.png",
	icon_size = 64,
	subgroup = "singularity",
	order = "n-c",
	spoil_ticks = 0.8 * minute,
    spoil_result = "singularity-crystal-core-65",
},
----------------------------------------------------------------
{
	name = "singularity-crystal-core-313",
	type = "item",
	stack_size = 1,
	weight = 200*kg,
	icon = "__Nexus-Graphics__/graphics/items/singularity-crystal-core-313.png",
	icon_size = 64,
	subgroup = "singularity",
	order = "n-d",
	spoil_ticks = 0.7 * minute,
    spoil_result = "singularity-crystal-core-119",
},
----------------------------------------------------------------
{
	name = "singularity-crystal-core-412",
	type = "item",
	stack_size = 1,
	weight = 200*kg,
	icon = "__Nexus-Graphics__/graphics/items/singularity-crystal-core-412.png",
	icon_size = 64,
	subgroup = "singularity",
	order = "n-e",
	spoil_ticks = 0.6 * minute,
    spoil_result = "singularity-crystal-core-119",
},
----------------------------------------------------------------
{
	name = "dark-matter-crystal",
	type = "item",
	stack_size = 1,
	weight = 200*kg,
	icon = "__Nexus-Graphics__/graphics/items/dark-matter-crystal.png",
	icon_size = 64,
	subgroup = "singularity",
	order = "n-o",
},
----------------------------------------------------------------
{
	name = "advanced-fusion-fuel",
	type = "item",
	stack_size = 10,
	weight = 20*kg,
	icon = "__Nexus-Graphics__/graphics/items/advanced-fusion-fuel.png",
	icon_size = 64,
	subgroup = "fusion",
	order = "h-d",
	fuel_value = "100GJ",
    fuel_category = "dark-matter-fuel",
    stack_size = 50,
    default_import_location = "nexus",
    weight = 20*kg
},
----------------------------------------------------------------
{
	name = "high-energy-crystal",
	type = "item",
	stack_size = 20,
	weight = 20*kg,
	icon = "__Nexus-Graphics__/graphics/items/high-energy-crystal.png",
	icon_size = 64,
	subgroup = "singularity",
	order = "n-f",
},
----------------------------------------------------------------
----------------------------------------------------------------
-------ASSEMBLER-------

{
	name = "atomacer",
	type = "item",
	stack_size = 10,
	weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/atomacer.png",
	icon_size = 64,
	subgroup = "maschines",
	order = "a-c",
	place_result = "atomacer"
},
----------------------------------------------------------------
{
	name = "atomar-separator",
	type = "item",
	stack_size = 10,
	weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/atomar-separator.png",
	icon_size = 64,
	subgroup = "maschines",
	order = "a-d",
	place_result = "atomar-separator"
},
----------------------------------------------------------------
{
	name = "photon-enrichment-chamber",
	type = "item",
	stack_size = 10,
	weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/photon-enrichment-chamber.png",
	icon_size = 64,
	subgroup = "maschines",
	order = "a-a",
	place_result = "photon-enrichment-chamber"
},
----------------------------------------------------------------
{
	name = "photon-enrichment-chamber-mk2",
	type = "item",
	stack_size = 10,
	weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/photon-enrichment-chamber-mk2.png",
	icon_size = 64,
	subgroup = "maschines",
	order = "a-b",
	place_result = "photon-enrichment-chamber-mk2"
},
----------------------------------------------------------------
{
	name = "atomar-assembler",
	type = "item",
	stack_size = 10,
	weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/atomar-assembler.png",
	icon_size = 64,
	subgroup = "maschines",
	order = "a-f",
	place_result = "atomar-assembler"
},
----------------------------------------------------------------
{
	name = "roller-factory",
	type = "item",
	stack_size = 10,
	weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/roller-factory.png",
	icon_size = 64,
	subgroup = "maschines",
	order = "a-h",
	place_result = "roller-factory"
},
----------------------------------------------------------------
{
	name = "nano-factory",
	type = "item",
	stack_size = 10,
	weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/nano-factory.png",
	icon_size = 64,
	subgroup = "maschines",
	order = "a-k",
	place_result = "nano-factory"
},
----------------------------------------------------------------
{
	name = "advanced-crusher",
	type = "item",
	stack_size = 10,
	weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/advanced-crusher.png",
	icon_size = 64,
	subgroup = "maschines",
	order = "a-g",
	place_result = "advanced-crusher"
},
----------------------------------------------------------------
{
	name = "matter-stabilizer",
	type = "item",
	stack_size = 10,
	weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/matter-stabilizer.png",
	icon_size = 64,
	subgroup = "maschines",
	order = "a-e",
	place_result = "matter-stabilizer"
},
----------------------------------------------------------------
{
	name = "nano-fluid-factory",
	type = "item",
	stack_size = 10,
	weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/nano-fluid-factory.png",
	icon_size = 64,
	subgroup = "maschines",
	order = "a-l",
	place_result = "nano-fluid-factory"
},
----------------------------------------------------------------
{
	name = "matter-activator",
	type = "item",
	stack_size = 10,
	weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/matter-activator.png",
	icon_size = 64,
	subgroup = "maschines",
	order = "a-m",
	place_result = "matter-activator"
},
----------------------------------------------------------------
{
	name = "fusion-reactor-mk2",
	type = "item",
	stack_size = 10,
	weight = 1000*kg,
	icon = "__space-age__/graphics/icons/fusion-reactor.png",
	icon_size = 64,
	subgroup = "fusion",
	order = "h-b",
	place_result = "fusion-reactor-mk2"
},
----------------------------------------------------------------
{
	name = "fusion-generator-mk2",
	type = "item",
	stack_size = 10,
    weight = 1000*kg,
	icon = "__space-age__/graphics/icons/fusion-generator.png",
	icon_size = 64,
	subgroup = "fusion",
	order = "h-c",
	place_result = "fusion-generator-mk2"
},
----------------------------------------------------------------
{
	name = "singularity-assembler",
	type = "item",
	stack_size = 10,
    weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/singularity-assembler.png",
	icon_size = 64,
	subgroup = "singularity",
	order = "n-a",
	place_result = "singularity-assembler"
},
----------------------------------------------------------------
--[[
{
	name = "high-pressure-acid-generator",
	type = "item",
	stack_size = 10,
    weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/high-pressure-acid-generator.png",
	icon_size = 64,
	subgroup = "fusion",
	order = "h-a",
	place_result = "high-pressure-acid-generator"
},
--]]
----------------------------------------------------------------
{
	name = "omega-substation",
	type = "item",
	stack_size = 10,
    weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/omega-substation.png",
	icon_size = 64,
	subgroup = "plasma-duct",
	order = "o-b",
	place_result = "omega-substation"
},
----------------------------------------------------------------
{
	name = "omega-tank",
	type = "item",
	stack_size = 10,
    weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/omega-tank.png",
	icon_size = 64,
	subgroup = "plasma-duct",
	order = "o-c",
	place_result = "omega-tank"
},
----------------------------------------------------------------
{
	name = "omega-accumulator",
	type = "item",
	stack_size = 50,
    weight = 50*kg,
	icon = "__Nexus-Graphics__/graphics/items/omega-accumulator.png",
	icon_size = 64,
	subgroup = "plasma-duct",
	order = "o-d",
	place_result = "omega-accumulator"
},
----------------------------------------------------------------
{
	name = "omega-accumulator-t2",
	type = "item",
	stack_size = 50,
    weight = 50*kg,
	icon = "__Nexus-Graphics__/graphics/items/omega-accumulator.png",
	icon_size = 64,
	subgroup = "plasma-duct",
	order = "o-d",
	place_result = "omega-accumulator-t2"
},
----------------------------------------------------------------
{
	name = "omega-accumulator-t3",
	type = "item",
	stack_size = 50,
    weight = 50*kg,
	icon = "__Nexus-Graphics__/graphics/items/omega-accumulator.png",
	icon_size = 64,
	subgroup = "plasma-duct",
	order = "o-d",
	place_result = "omega-accumulator-t3"
},
----------------------------------------------------------------
{
	name = "zero-point-energy-engine-core",
	type = "item",
	stack_size = 1,
    weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/zero-point-energy-engine-core.png",
	icon_size = 64,
	subgroup = "fusion",
	order = "h-e",
	place_result = "zero-point-energy-engine-core"
},
----------------------------------------------------------------
{
	name = "zero-point-energy-engine-injector-down",
	type = "item",
	stack_size = 1,
    weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/zero-point-energy-engine-injector-down.png",
	icon_size = 64,
	subgroup = "fusion",
	order = "h-f",
	place_result = "zero-point-energy-engine-injector-down"
},
----------------------------------------------------------------
{
	name = "zero-point-energy-engine-injector-up",
	type = "item",
	stack_size = 1,
    weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/zero-point-energy-engine-injector-up.png",
	icon_size = 64,
	subgroup = "fusion",
	order = "h-g",
	place_result = "zero-point-energy-engine-injector-up"
},
----------------------------------------------------------------
{
	name = "zero-point-energy-engine-injector-left",
	type = "item",
	stack_size = 1,
    weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/zero-point-energy-engine-injector-left.png",
	icon_size = 64,
	subgroup = "fusion",
	order = "h-h",
	place_result = "zero-point-energy-engine-injector-left"
},
----------------------------------------------------------------
{
	name = "zero-point-energy-engine-injector-right",
	type = "item",
	stack_size = 1,
    weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/zero-point-energy-engine-injector-right.png",
	icon_size = 64,
	subgroup = "fusion",
	order = "h-i",
	place_result = "zero-point-energy-engine-injector-right"
},
----------------------------------------------------------------
----------------------------------------------------------------
-------ORE-------

{
    name = "ionit-ore",
	type = "item",
    icon = "__Nexus-Graphics__/graphics/items/ionit-ore.png",
    subgroup = "nexus-ore",
    color_hint = { text = "I" },
    --order = "b-a", ---alte Order--jetzt Freier Platz
	order = "j-a",
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 200,
    weight = 8 * kg
},
----------------------------------------------------------------
{
	name = "promethium",
	type = "item",
	stack_size = 200,
	weight = 100*kg,
	icon = "__Nexus-Graphics__/graphics/items/promethium.png",
	icon_size = 64,
	subgroup = "nexus-ore",
	--order = "d-a", ---alte Order--jetzt Freier Platz
	order = "j-b",
},
----------------------------------------------------------------
{
	name = "gold-ore",
	type = "item",
	stack_size = 50,
	weight = 2*kg,
	icon = "__Nexus-Graphics__/graphics/items/gold-ore-2.png",
	icon_size = 64,
	subgroup = "nexus-ore",
	order = "j-c",
    pictures =
    {
      { size = 64, filename = "__Nexus-Graphics__/graphics/items/gold-ore-1.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__Nexus-Graphics__/graphics/items/gold-ore-2.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__Nexus-Graphics__/graphics/items/gold-ore-3.png", scale = 0.5, mipmap_count = 4 }
    },
},
----------------------------------------------------------------
{
	name = "platin-ore",
	type = "item",
	stack_size = 50,
	weight = 2*kg,
	icon = "__Nexus-Graphics__/graphics/items/platin-ore-1.png",
	icon_size = 64,
	subgroup = "nexus-ore",
	order = "j-d",
    pictures =
    {
      { size = 64, filename = "__Nexus-Graphics__/graphics/items/platin-ore-1.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__Nexus-Graphics__/graphics/items/platin-ore-2.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__Nexus-Graphics__/graphics/items/platin-ore-3.png", scale = 0.5, mipmap_count = 4 }
    },
},
----------------------------------------------------------------
{
	name = "diamond",
	type = "item",
	stack_size = 50,
    weight = 50*kg,
	icon = "__Nexus-Graphics__/graphics/items/diamond-2.png",
	icon_size = 64,
	subgroup = "components",
	order = "b-c",
    pictures =
    {
      { size = 64, filename = "__Nexus-Graphics__/graphics/items/diamond-1.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__Nexus-Graphics__/graphics/items/diamond-2.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__Nexus-Graphics__/graphics/items/diamond-3.png", scale = 0.5, mipmap_count = 4 }
    },
},

----------------------------------------------------------------
----------------------------------------------------------------
-------Science-------

{
	name = "promethium-882-science-pack",
    type = "tool",
	stack_size = 200,
    icon = "__Nexus-Graphics__/graphics/items/promethium-882-science-pack.png",
	weight = 1*kg,
    durability = 1,
    subgroup = "omega-science-pack",
	order = "w",
    color_hint = { text = "I" },
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    random_tint_color = item_tints.bluish_science
},
----------------------------------------------------------------
{
	name = "antimatter-science-pack",
    type = "tool",
    stack_size = 200,
	icon = "__Nexus-Graphics__/graphics/items/antimatter-science-pack.png",
	weight = 1*kg,
    durability = 1,
    subgroup = "omega-science-pack",
	order = "x",
    color_hint = { text = "I" },
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    random_tint_color = item_tints.bluish_science
},
----------------------------------------------------------------
{
	name = "omega-automation-science-pack",
    type = "tool",
    stack_size = 200,
	icon = "__Nexus-Graphics__/graphics/items/omega-automation-science-pack.png",
	weight = 1*kg,
    durability = 1,
    subgroup = "omega-science-pack",
	order = "l",
    color_hint = { text = "I" },
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    random_tint_color = item_tints.bluish_science
},
----------------------------------------------------------------
{
	name = "omega-logistic-science-pack",
    type = "tool",
    stack_size = 200,
	icon = "__Nexus-Graphics__/graphics/items/omega-logistic-science-pack.png",
	weight = 1*kg,
    durability = 1,
    subgroup = "omega-science-pack",
	order = "m",
    color_hint = { text = "I" },
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    random_tint_color = item_tints.bluish_science
},
----------------------------------------------------------------
{
	name = "omega-military-science-pack",
    type = "tool",
    stack_size = 200,
	icon = "__Nexus-Graphics__/graphics/items/omega-military-science-pack.png",
	weight = 1*kg,
    durability = 1,
    subgroup = "omega-science-pack",
	order = "n",
    color_hint = { text = "I" },
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    random_tint_color = item_tints.bluish_science
},
----------------------------------------------------------------
{
	name = "omega-chemical-science-pack",
    type = "tool",
    stack_size = 200,
	icon = "__Nexus-Graphics__/graphics/items/omega-chemical-science-pack.png",
	weight = 1*kg,
    durability = 1,
    subgroup = "omega-science-pack",
	order = "o",
    color_hint = { text = "I" },
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    random_tint_color = item_tints.bluish_science
},
----------------------------------------------------------------
{
	name = "omega-production-science-pack",
    type = "tool",
    stack_size = 200,
	icon = "__Nexus-Graphics__/graphics/items/omega-production-science-pack.png",
	weight = 1*kg,
    durability = 1,
    subgroup = "omega-science-pack",
	order = "p",
    color_hint = { text = "I" },
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    random_tint_color = item_tints.bluish_science
},
----------------------------------------------------------------
{
	name = "omega-utility-science-pack",
    type = "tool",
    stack_size = 200,
	icon = "__Nexus-Graphics__/graphics/items/omega-utility-science-pack.png",
	weight = 1*kg,
    durability = 1,
    subgroup = "omega-science-pack",
	order = "q",
    color_hint = { text = "I" },
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    random_tint_color = item_tints.bluish_science
},
----------------------------------------------------------------
{
	name = "omega-space-science-pack",
    type = "tool",
    stack_size = 200,
	icon = "__Nexus-Graphics__/graphics/items/omega-space-science-pack.png",
	weight = 1*kg,
    durability = 1,
    subgroup = "omega-science-pack",
	order = "r",
    color_hint = { text = "I" },
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    random_tint_color = item_tints.bluish_science
},
----------------------------------------------------------------
{
	name = "omega-metallurgic-science-pack",
    type = "tool",
    stack_size = 200,
	icon = "__Nexus-Graphics__/graphics/items/omega-metallurgic-science-pack.png",
	weight = 1*kg,
    durability = 1,
    subgroup = "omega-science-pack",
	order = "s",
    color_hint = { text = "I" },
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    random_tint_color = item_tints.bluish_science
},
----------------------------------------------------------------
{
	name = "omega-agricultural-science-pack",
    type = "tool",
    stack_size = 200,
	icon = "__Nexus-Graphics__/graphics/items/omega-agricultural-science-pack.png",
	weight = 1*kg,
    durability = 1,
	spoil_ticks = 1 * hour,
    spoil_result = "spoilage",
    subgroup = "omega-science-pack",
	order = "t",
    color_hint = { text = "I" },
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    random_tint_color = item_tints.bluish_science
},
----------------------------------------------------------------
{
	name = "omega-electromagnetic-science-pack",
    type = "tool",
    stack_size = 200,
	icon = "__Nexus-Graphics__/graphics/items/omega-electromagnetic-science-pack.png",
	weight = 1*kg,
    durability = 1,
    subgroup = "omega-science-pack",
	order = "u",
    color_hint = { text = "I" },
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    random_tint_color = item_tints.bluish_science
},
----------------------------------------------------------------
{
	name = "omega-cryogenic-science-pack",
    type = "tool",
    stack_size = 200,
	icon = "__Nexus-Graphics__/graphics/items/omega-cryogenic-science-pack.png",
	weight = 1*kg,
    durability = 1,
    subgroup = "omega-science-pack",
	order = "v",
    color_hint = { text = "I" },
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    random_tint_color = item_tints.bluish_science
},
----------------------------------------------------------------
----------------------------------------------------------------
-------LAB-------

{
	name = "omega-lab",
	type = "item",
	stack_size = 10,
    weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/omega-lab.png",
	icon_size = 64,
	subgroup = "nexus-labs",
	order = "k-a",
	place_result = "omega-lab"
},

----------------------------------------------------------------
----------------------------------------------------------------
-------MODULE-------

{
	type = "item",
	name = "omega-beacon",
    --localised_description = { "item-description.quality-module" },
    icon = "__Nexus-Graphics__/graphics/items/omega-beacon.png",
	icon_size = 64,
    subgroup = "nexus-module",
    order = "l-a",
    --inventory_move_sound = item_sounds.module_inventory_move,
    --pick_sound = item_sounds.module_inventory_pickup,
    --drop_sound = item_sounds.module_inventory_move,
    stack_size = 10,
    weight = 25 * kg,
	place_result = "omega-beacon"
},
----------------------------------------------------------------
{
    type = "module",
    name = "omega-effectivity-module",
    --localised_description = { "item-description.quality-module" },
    icon = "__Nexus-Graphics__/graphics/items/omega-effectivity-module.png",
	icon_size = 64,
    subgroup = "nexus-module",
    color_hint = { text = "Q" },
    category = "omega",
    tier = 1,
    order = "l-b",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    weight = 20 * kg,
    effect = { consumption = -0.04, speed = 0.10, quality = -8, productivity = -0.8}
},
----------------------------------------------------------------
{
    type = "module",
    name = "omega-module-mk1",
    --localised_description = { "item-description.quality-module" },
    icon = "__Nexus-Graphics__/graphics/items/omega-module-mk1.png",
	icon_size = 64,
    subgroup = "nexus-module",
    color_hint = { text = "Q" },
    category = "omega",
    tier = 1,
    order = "l-d",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    weight = 20 * kg,
    effect = { consumption = 1.0, --[[quality = 0.12,--]] speed = 0.05, productivity = 0.05 }
},
----------------------------------------------------------------
{
    type = "module",
    name = "omega-module-mk2",
    --localised_description = { "item-description.quality-module" },
    icon = "__Nexus-Graphics__/graphics/items/omega-module-mk2.png",
	icon_size = 64,
    subgroup = "nexus-module",
    color_hint = { text = "Q" },
    category = "omega",
    tier = 1,
    order = "l-e",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    weight = 20 * kg,
    effect = { consumption = 2.0, --[[quality = 0.24,--]] speed = 0.10, productivity = 0.10 }
},
----------------------------------------------------------------
{
    type = "module",
    name = "omega-module-mk3",
    --localised_description = { "item-description.quality-module" },
    icon = "__Nexus-Graphics__/graphics/items/omega-module-mk3.png",
	icon_size = 64,
    subgroup = "nexus-module",
    color_hint = { text = "Q" },
    category = "omega",
    tier = 1,
    order = "l-f",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    weight = 20 * kg,
    effect = { consumption = 3.0, --[[quality = 0.3,--]] speed = 0.2, productivity = 0.20 }
},
----------------------------------------------------------------
{
    type = "module",
    name = "omega-module-mk4",
    --localised_description = { "item-description.quality-module" },
    icon = "__Nexus-Graphics__/graphics/items/omega-module-mk4.png",
	icon_size = 64,
    subgroup = "nexus-module",
    color_hint = { text = "Q" },
    category = "omega",
    tier = 1,
    order = "l-g",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    weight = 20 * kg,
    effect = { consumption = 4.0, --[[quality = 0.6,--]] speed = 0.4, productivity = 0.40 }
},
----------------------------------------------------------------
{
    type = "module",
    name = "omega-quality-module",
    --localised_description = { "item-description.quality-module" },
    icon = "__Nexus-Graphics__/graphics/items/omega-quality-module.png",
	icon_size = 64,
    subgroup = "nexus-module",
    color_hint = { text = "Q" },
    category = "omega",
    tier = 1,
    order = "l-c",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    weight = 20 * kg,
    effect = { consumption = 6.0, quality = 0.70, speed = 0.05 }
},

----------------------------------------------------------------
----------------------------------------------------------------
-------WARP DRIVE COMPONENTS-------

{
	name = "warp-drive-frame",
	type = "item",
	stack_size = 1,
	weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/warp-drive-frame.png",
	icon_size = 64,
	subgroup = "warp-drive-components",
	order = "m-a",
},
----------------------------------------------------------------
{
	name = "exotic-matter-containment-fields-generator",
	type = "item",
	stack_size = 1,
	weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/exotic-matter-containment-fields-generator.png",
	icon_size = 64,
	subgroup = "warp-drive-components",
	order = "m-b",
},
----------------------------------------------------------------
{
	name = "gravity-fields-generator",
	type = "item",
	stack_size = 1,
	weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/gravity-fields-generator.png",
	icon_size = 64,
	subgroup = "warp-drive-components",
	order = "m-c",
},
----------------------------------------------------------------
{
	name = "antimatter-containment-fields-generator",
	type = "item",
	stack_size = 1,
	weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/antimatter-containment-fields-generator.png",
	icon_size = 64,
	subgroup = "warp-drive-components",
	order = "m-d",
},
----------------------------------------------------------------
{
	name = "singularity-core",
	type = "item",
	stack_size = 1,
	weight = 1000*kg,
	icon = "__Nexus-Graphics__/graphics/items/singularity-core.png",
	icon_size = 64,
	subgroup = "warp-drive-components",
	order = "m-e",
},

----------------------------------------------------------------
----------------------------------------------------------------
})