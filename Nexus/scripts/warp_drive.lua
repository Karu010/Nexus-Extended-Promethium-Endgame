--warp_drive.lua

-- The warp drive engine is meant for the jump to the Oort cloud and on to Sol. On an ordinary route it throws the
-- platform through dense asteroid lines: the game drops to under 1 UPS for hours and multiplayer desyncs. The engines
-- of a platform are switched off while it travels a route that neither starts nor ends at the Oort cloud or Sol, and on
-- again otherwise.
--
-- They are off while the platform is parked as well, and come on once it is on its way. An engine that is on at
-- departure gives one tick of warp thrust at speed 0: the platform falls back to the location and tries again every
-- tick, without ever leaving. The ordinary thrusters take it off, the warp engines take over from there.
--
-- A platform that reaches an ordinary route at warp speed (Oort cloud to Fulgora through Nexus) would keep that speed
-- with the engines off, and its asteroids freeze the game. It goes on from the start of that route at ordinary speed.
--
-- A platform whose only fuelled thrusters are switched off warp engines tries to leave every tick and falls back, as
-- the game counts their fuel as thrust. It is paused with a message until the player has sorted out its thrusters.

local warp_drive = {}

local ENGINE = "warp-drive-engine"
local WARP_LOCATIONS = { ["oort-cloud"] = true, ["sol"] = true }
local MAX_ORDINARY_SPEED = 10 -- km per tick

local function leave_warp_speed(platform)
    if platform.speed <= MAX_ORDINARY_SPEED then return end

    platform.speed = MAX_ORDINARY_SPEED
    -- what the jump overshot the last route by would carry the platform past this one
    if platform.distance < 0 then
        platform.distance = 1
    elseif platform.distance > 1 then
        platform.distance = 0
    end
end

function warp_drive.update_platform(platform)
    if not (platform and platform.valid and platform.surface) then return end

    local connection = platform.space_connection
    local allowed = connection and (WARP_LOCATIONS[connection.from.name] or WARP_LOCATIONS[connection.to.name]) or false
    local engines = platform.surface.find_entities_filtered({name = ENGINE})
    for _, engine in pairs(engines) do
        engine.disabled_by_script = not allowed
    end
    if connection and not allowed and #engines > 0 then
        leave_warp_speed(platform)
    end
end

function warp_drive.on_state_changed(event)
    local platform = event.platform
    warp_drive.update_platform(platform)

    if not platform.valid then return end
    if event.old_state == defines.space_platform_state.on_the_path
        and platform.state == defines.space_platform_state.waiting_for_departure
        and platform.surface.count_entities_filtered({name = ENGINE, limit = 1}) > 0 then
        platform.paused = true
        platform.force.print({"", "[color=yellow]", {"nexus-mod.chat-warp-no-thrust", platform.name}, "[/color]"})
    end
end

function warp_drive.refresh_all()
    for _, force in pairs(game.forces) do
        for _, platform in pairs(force.platforms) do
            warp_drive.update_platform(platform)
        end
    end
end

return warp_drive
