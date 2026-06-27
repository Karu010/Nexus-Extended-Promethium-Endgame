-- pump_zero_point_energy_core.lua

-- Abhängigkeiten für Sound und Effekte laden (standard practice)
local sounds = require("__base__.prototypes.entity.sounds")
local hit_effects = require("__base__.prototypes.entity.hit-effects")

----------------------------------------------------------------
-- Definition der unsichtbaren 60/s Pumpe
----------------------------------------------------------------

local invisible_limiter_pump = {
    type = "pump",
    name = "invisible-throughput-limiter-pump",
	squeak_behaviour = false,										--compatibility with "squeak-through-2"
    icon = "__base__/graphics/icons/pump.png", 
    icon_size = 32,
    
    flags = {
		"placeable-neutral",
		"player-creation",
		"not-selectable-in-game",
		"not-blueprintable",
		"not-deconstructable",
		"not-flammable",
		"not-repairable"
		},
	resistances = {
		{ type = "physical", decrease = 0, percent = 100 },
		{ type = "impact",   decrease = 0, percent = 100 },
		{ type = "fire",     decrease = 0, percent = 100 },
		{ type = "laser",    decrease = 0, percent = 100 },
		{ type = "poison",   decrease = 0, percent = 100 },
		{ type = "explosion",decrease = 0, percent = 100 },
		{ type = "acid",     decrease = 0, percent = 100 },
		{ type = "electric", decrease = 0, percent = 100 }
	},

    minable = {
        mining_time = 0.1, 
        result = "invisible-throughput-limiter-pump-item"
    },
    max_health = 10,
    destructible = false,
    corpse = nil,

    collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
    --selection_box = {{-0.1, -0.1}, {0.1, 0.1}},
    
    pumping_speed = 1,

energy_source =
    {
      type = "void",
    },
    energy_usage = "1W",

-- ... (vorheriger Code bis fluid_box) ...

    -- Fluid-Boxen definieren (1x1 Entität, Input/Output jetzt zentriert)
    fluid_box = {
        base_area = 1,
        volume = 1, 
        pipe_connections = {
            { 
                position = {0, 0}, 
                flow_direction = "input", -- *DIE KORREKTUR* 'type' ersetzt durch 'flow_direction'
                direction = defines.direction.west -- Norden
            }, 
            { 
                position = {0, 0}, 
                flow_direction = "output", -- *DIE KORREKTUR* 'type' ersetzt durch 'flow_direction'
                direction = defines.direction.east -- Süden
            }
        }
    },
    
-- ... (restlicher Code) ...


    
    picture = {
        layers = {
            {
                filename = "__core__/graphics/empty.png",
                width = 1,
                height = 1,
                priority = "extra-high-alt"
            }
        }
    },

    -- vehicle_impact_sound auskommentiert gelassen, da es oben schon auskommentiert war
--    working_sound = {
--        sound = { filename = "__base__/sound/pump.ogg" },
--        audible_distance_modifier = 0.5,
--        volume = 0.6
--    },

    water_only_patch_index = nil, 
}

data:extend{invisible_limiter_pump}

----------------------------------------------------------------
-- Item Definition, um die Entität platzieren zu können (versteckt)
----------------------------------------------------------------

local pump_item = {
    type = "item",
    name = "invisible-throughput-limiter-pump-item",
    icon = "__base__/graphics/icons/pump.png",
    icon_size = 32,
    flags = {}, 
    stack_size = 50,
    place_result = "invisible-throughput-limiter-pump",
    technology = nil, 
}

data:extend{pump_item}