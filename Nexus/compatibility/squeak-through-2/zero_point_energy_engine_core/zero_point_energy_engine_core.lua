--zero_point_energy_engine_core.lua
local sounds = require("__base__.prototypes.entity.sounds")


data:extend({

----------------------------------------------------------------
----------------------------------------------------------------

{
    name = "zero-point-energy-engine-core",
	type = "generator",
	squeak_behaviour = false,										--compatibility with "squeak-through-2"
    icon = "__Nexus-Graphics__/graphics/items/zero-point-energy-engine-core.png",
	icon_size = 64,
    --flags = {"placeable-neutral", "placeable-player", "player-creation"},
	flags = {"placeable-neutral", "player-creation", "not-rotatable"},
	place_result = "zero-point-energy-engine-core",
    minable = {mining_time = 0.8, result = "zero-point-energy-engine-core"},
    max_health = 2000,
	--rotatable = false,
    corpse = "assembling-machine-1-remnants",
    dying_explosion = "assembling-machine-1-explosion",
    icon_draw_specification = {shift = {0, -0.3}},
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_box = {
		  volume = 200,
          --filter = "zero-point-energy",
          base_area = 1,
          height = 2,
          base_level = -1,
          --pipe_covers = pipecoverspictures(),
      pipe_connections =
		{
			{filter = "zero-point-energy", flow_direction = "input-output", direction = defines.direction.east, position = {6.9, 2} },   ----right
			{filter = "zero-point-energy", flow_direction = "input-output", direction = defines.direction.west, position = {-6.9, 2} },  ----left
			{filter = "zero-point-energy", flow_direction = "input-output", direction = defines.direction.south, position = {0, 7} },  ----down
			{filter = "zero-point-energy", flow_direction = "input-output", direction = defines.direction.north, position = {0, -3} }  ----up
		},
    },
    fluid_boxes_off_when_no_fluid_recipe = false,
    collision_box = {{-8.4,-4.4},{8.4,8.4}},
    selection_box = {{-8.5,-4.5},{8.5,8.5}},
    --damaged_trigger_effect = hit_effects.entity(),
    fast_replaceable_group = "zero-point-energy-engine-core",
    --next_upgrade = "assembling-machine-2",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
    alert_icon_shift = util.by_pixel(0, -12),

    crafting_categories = {"zero-point-energy-engine-core"},
    crafting_speed = 2.0,
    energy_source =
    {
      type = "electric",
	  usage_priority = "primary-output"
    },
	burns_fluid = true,
    fluid_usage_per_tick = 4,
    minimum_temperature = 0,
	maximum_temperature = 2000000000,
	scale_fluid_usage = true,
	max_power_output = "240GW",
	production_type = "input",
	--graphics_set =
    --{
	
	
	
	horizontal_animation = {
      layers = {
        -- Ebene 1: Die statische Grundgrafik (dein erstes Bild)
        {
          filename = "__Nexus-Graphics__/graphics/entity/zero_point_energy_engine/zero_point_energy_engine_core/zero-point-energy-engine-core.png",
          width = 1080,
          height = 1080,
          frame_count = 1,
          repeat_count = 9, -- Muss mit frame_count der Animation übereinstimmen
		  scale = 1,
          shift = {0, 0}
        },
        -- Ebene 2: Die eigentliche Animation (dein zweites Bild)
        {
          filename = "__Nexus-Graphics__/graphics/entity/zero_point_energy_engine/zero_point_energy_engine_core/zero-point-energy-engine-core-animation.png",
          width = 1080,
          height = 1080,
          frame_count = 9, -- Beispiel: 10 Frames in deinem zweiten Bild
          line_length = 3,  -- Falls das Bild z.B. 2 Reihen à 5 Frames hat
          animation_speed = 0.5,
		  scale = 1,
          shift = {0, 0},
          draw_as_glow = true -- Optional: Animation leuchtet im Dunkeln
        }
      }
    },
	vertical_animation = { layers = {
        -- Ebene 1: Die statische Grundgrafik (dein erstes Bild)
        {
          filename = "__Nexus-Graphics__/graphics/entity/zero_point_energy_engine/zero_point_energy_engine_core/zero-point-energy-engine-core.png",
          width = 1080,
          height = 1080,
          frame_count = 1,
          repeat_count = 9, -- Muss mit frame_count der Animation übereinstimmen
		  scale = 0.51,
          shift = {0,2.6},
        },
        -- Ebene 2: Die eigentliche Animation (dein zweites Bild)
        {
          filename = "__Nexus-Graphics__/graphics/entity/zero_point_energy_engine/zero_point_energy_engine_core/zero-point-energy-engine-core-animation.png",
          width = 1080,
          height = 1080,
          frame_count = 9, -- Beispiel: 10 Frames in deinem zweiten Bild
          line_length = 3,  -- Falls das Bild z.B. 2 Reihen à 5 Frames hat
          animation_speed = 0.5,
		  scale = 0.51,
          shift = {0,2.6},
          draw_as_glow = true -- Optional: Animation leuchtet im Dunkeln
        }
      }
    },
		
		--},
	
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
	--allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
	--allowed_module_categories = {"speed", "quality", "omega"},
	--module_slots = 4,
    effect_receiver = {uses_module_effects = false, uses_beacon_effects = false, uses_surface_effects = true},
    impact_category = "metal",
    working_sound =
    {
    sound = {filename = "__space-age__/sound/entity/platform-thruster/thruster-mechanic-2.ogg", volume = 0.7},
    apparent_volume = 0.4,
    }
},

----------------------------------------------------------------
----------------------------------------------------------------
})