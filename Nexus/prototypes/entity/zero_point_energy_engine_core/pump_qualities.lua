-- pump_qualities.lua

----------------------------------------------------------------
-- Limiter pumps for every quality of the zero-point energy engine core
----------------------------------------------------------------
-- The core draws its fluid through four invisible limiter pumps (control.lua). The quality of a pump does not change
-- its pumping speed, so a legendary core would be capped at the throughput of a normal one. Each quality above normal
-- gets its own pump here, faster by 30 % per quality level like the machines; scripts/zero_point_core.lua places the
-- pump of the core's quality. Runs in data-final-fixes, after other mods have added their qualities.

local limiter = data.raw["pump"]["invisible-throughput-limiter-pump"]

if limiter then
    for _, quality in pairs(data.raw["quality"] or {}) do
        local name = "invisible-throughput-limiter-pump-" .. quality.name

        if (quality.level or 0) > 0 and not data.raw["pump"][name] then
            local pump = table.deepcopy(limiter)
            pump.name = name
            pump.pumping_speed = limiter.pumping_speed * (1 + 0.3 * quality.level)
            pump.placeable_by = {item = "invisible-throughput-limiter-pump-item", count = 1}
            data:extend({pump})
        end
    end
end
