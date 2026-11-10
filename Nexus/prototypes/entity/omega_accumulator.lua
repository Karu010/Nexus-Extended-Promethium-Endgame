--omega_accumulator.lua
require("util")
local sounds = require("__base__.prototypes.entity.sounds")
local hit_effects = require("__base__.prototypes.entity.hit-effects")





function omega_accumulator_picture(tint, repeat_count)
    return
    {
      layers =
      {
        {
          filename = "__Nexus-Graphics__/graphics/entity/omega-accumulator.png",
          priority = "high",
          width = 130,
          height = 189,
          repeat_count = repeat_count,
          shift = util.by_pixel(0, -11),
          tint = tint,
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/accumulator/accumulator-shadow.png",
          priority = "high",
          width = 234,
          height = 106,
          repeat_count = repeat_count,
          shift = util.by_pixel(29, 6),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  end

  function omega_accumulator_charge()
    return
    {
      layers =
      {
        omega_accumulator_picture({1, 1, 1, 1} , 24),
        {
          filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",
          priority = "high",
          width = 178,
          height = 210,
          line_length = 6,
          frame_count = 24,
          draw_as_glow = true,
          shift = util.by_pixel(0, -22),
          scale = 0.5
        }
      }
    }
  end

  function omega_accumulator_discharge()
    return
    {
      layers =
      {
        omega_accumulator_picture({1, 1, 1, 1} , 24),
        {
          filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",
          priority = "high",
          width = 174,
          height = 214,
          line_length = 6,
          frame_count = 24,
          draw_as_glow = true,
          shift = util.by_pixel(-1, -23),
          scale = 0.5
        }
      }
    }
  end

-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------

data:extend({

----------------------------------------------------------------
----------------------------------------------------------------
  
  {
    type = "accumulator",
    name = "omega-accumulator",
    icon = "__Nexus-Graphics__/graphics/items/omega-accumulator.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "omega-accumulator"},
    fast_replaceable_group = "accumulator",
	next_upgrade = "omega-accumulator-t2",
    max_health = 150,
    corpse = "accumulator-remnants",
    dying_explosion = "accumulator-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box_vertical_extension = 0.5,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "125MJ",
      usage_priority = "tertiary",
      input_flow_limit = "7MW",
      output_flow_limit = "7MW"
    },
    chargable_graphics =
    {
      picture = omega_accumulator_picture(),
      charge_animation = omega_accumulator_charge(),
      charge_cooldown = 30,
      discharge_animation = omega_accumulator_discharge(),
      discharge_cooldown = 60
      --discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    },
    water_reflection = accumulator_reflection(),
    impact_category = "metal",
    open_sound = sounds.electric_large_open,
    close_sound = sounds.electric_large_close,
    working_sound =
    {
      main_sounds =
      {
        {
          sound =
          {
            filename = "__base__/sound/accumulator-working.ogg",
            volume = 0.4,
            modifiers = volume_multiplier("main-menu", 1.44),
            audible_distance_modifier = 0.5
          },
          match_volume_to_activity = true,
          activity_to_volume_modifiers = {offset = 2, inverted = true},
          fade_in_ticks = 4,
          fade_out_ticks = 20
        },
        {
          sound =
          {
            filename = "__base__/sound/accumulator-discharging.ogg",
            volume = 0.4,
            modifiers = volume_multiplier("main-menu", 1.44),
            audible_distance_modifier = 0.5
          },
          match_volume_to_activity = true,
          activity_to_volume_modifiers = {offset = 1},
          fade_in_ticks = 4,
          fade_out_ticks = 20
        }
      },
      idle_sound = {filename = "__base__/sound/accumulator-idle.ogg", volume = 0.35, audible_distance_modifier = 0.5},
      max_sounds_per_prototype = 3,
    },

    circuit_connector = circuit_connector_definitions["accumulator"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_output_signal = {type = "virtual", name = "signal-A"}
  },

----------------------------------------------------------------
----------------------------------------------------------------
})


--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
data.raw["accumulator"]["accumulator"].next_upgrade = "omega-accumulator"
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------


-------------------------------------------------------------------
-- OMEGA ACCUMULATOR T2
-------------------------------------------------------------------
local accumulator_t2 = table.deepcopy(data.raw["accumulator"]["omega-accumulator"])
accumulator_t2.name = "omega-accumulator-t2"
accumulator_t2.minable.result = "omega-accumulator-t2"
accumulator_t2.energy_source.buffer_capacity = "250MJ"
accumulator_t2.energy_source.input_flow_limit = "15MW"
accumulator_t2.energy_source.output_flow_limit = "15MW"
-- KORREKTUR: Der richtige Name von T3
accumulator_t2.next_upgrade = "omega-accumulator-t3" 

data:extend({accumulator_t2})

-- Link von T1 zu T2 (muss NACH dem deepcopy von T2 kommen!)
data.raw["accumulator"]["omega-accumulator"].next_upgrade = "omega-accumulator-t2"

-------------------------------------------------------------------
-- OMEGA ACCUMULATOR T3
-------------------------------------------------------------------
local accumulator_t3 = table.deepcopy(data.raw["accumulator"]["omega-accumulator"])
accumulator_t3.name = "omega-accumulator-t3"
accumulator_t3.minable.result = "omega-accumulator-t3"
accumulator_t3.energy_source.buffer_capacity = "500MJ"
accumulator_t3.energy_source.input_flow_limit = "30MW"
accumulator_t3.energy_source.output_flow_limit = "30MW"
accumulator_t3.next_upgrade = nil 

data:extend({accumulator_t3})

-- Sicherstellen, dass T2 auf T3 zeigt (falls oben was schief ging)
if data.raw["accumulator"]["omega-accumulator-t2"] then
    data.raw["accumulator"]["omega-accumulator-t2"].next_upgrade = "omega-accumulator-t3"
end


-- In der data.lua Phase definieren wir die Kette fest.
-- Der Planer folgt dieser Kette automatisch.
if data.raw["accumulator"]["accumulator"] then
    data.raw["accumulator"]["accumulator"].next_upgrade = "omega-accumulator"
end
if data.raw["accumulator"]["omega-accumulator"] then
    data.raw["accumulator"]["omega-accumulator"].next_upgrade = "omega-accumulator-t2"
end
if data.raw["accumulator"]["omega-accumulator-t2"] then
    data.raw["accumulator"]["omega-accumulator-t2"].next_upgrade = "omega-accumulator-t3"
end