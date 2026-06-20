-- We sometimes need some logic functions
local logic = require("__Nexus__.scripts.logic")

local gui = {}

-- GUI name id constants
local ids = {
    limit_frame = "nexus_limit_frame",
    limit_label = "entity_limit",
    label_cur = 3,
    label_max = 4,
}

function gui.get_limit_frame(player, clean_build)
    local top_gui = player.gui.top
    local frame = top_gui[ids.limit_frame]

    if clean_build then
        frame.destroy()
        frame = nil
    end

    if frame ~= nil and frame.valid then return frame end

    return top_gui.add{
        type = "frame",
        name = ids.limit_frame,
        direction = "vertical",
        style = "frame" 
    }
end

-- Update the entity limit for a given player and entity name
-- If the gui exists for this entity, the values for "cur" and "max" are updated
-- If "cur" or "max" is not defined/nil the value in the gui is not changed
-- If the gui for this element does not exist, missing values for "cur" and "max" 
--    are retrieved and a new gui element is created for the entity
function gui.update_entity_limit(player, entity_name, cur, max)
    if not player or not player.valid then return end
    local frame = gui.get_limit_frame(player)

    local entity_entry = frame[entity_name]

    if not entity_entry or not entity_entry.valid or 
       not entity_entry[ids.limit_label] or not entity_entry[ids.limit_label].valid then
        -- We have to create gui elements for this entity

        -- Set missing values
        if cur == nil then cur = player.force.get_entity_count(entity_name) end
        if max == nil then max = logic.get_machine_limit(player.force, entity_name) end

        gui.create_entry_limit(frame, entity_name, cur, max)
        return
    end

    if cur == nil and max == nil then return end

    -- Update existing gui elements
    local label = entity_entry[ids.limit_label]

    if cur ~= nil then
        label[ids.label_cur] = cur
    else
        cur = label[ids.label_cur]
    end

    if max ~= nil then
        label[ids.label_max] = max
    else
        max = label[ids.label_max]
    end

    -- This code part needs to be identical to the equivalent in gui.create_entry_limit (also has this comment)
    if cur >= max then
        label.style.font_color = {1, 0.3, 0.3}
    else
        label.style.font_color = {1, 1, 1}
    end
end

function gui.create_entry_limit(frame, entity_name, cur, max)
    local entity_entry = frame[entity_name]
    
    -- If there exists a valid gui element for this element, remove it first
    if entity_entry and entity_entry.valid then
        entity_entry.destroy()
    end

    entity_entry = frame.add{
        type = "flow", 
        direction = "horizontal",
        name = entity_name
    }

    entity_entry.add{
        type = "sprite",
        sprite = "item/" .. entity_name,
    }

    entity_entry.add{
        type = "label",
        name = ids.limit_label,
        --caption = {"", " ", config.label, ": ", current_count, " / ", max_allowed},

        -- ids.label_cur and ids.label_max need to correspond to the index of cur and max in this localised string
        caption = {"nexus-mod.gui-machine-limit", {logic.machine_configs[entity_name].label}, cur, max},
        style = "label"
    }

    -- This code part needs to be identical to the equivalent in gui.update_entity_limit (also has this comment)
    if cur >= max then
        label.style.font_color = {1, 0.3, 0.3}
    else
        label.style.font_color = {1, 1, 1}
    end
end

function gui.create_all_limits(player, limits, clean_build)
    if not player or not player.valid then return end

    limits = limits or logic.get_all_machine_limits(player.force)

    local frame = gui.get_limit_frame(player, clean_build)
    frame.clear() -- Remove children

    for entity_name, limit in pairs(limits) do
        gui.create_entry_limit(frame, entity_name, limit.cur, limit.max)
    end
end

function gui.update_entity_in_force(force, entity_name, cur, max)
    if not force or not force.valid then return end

    -- Set missing values, in case of missing guis for players
    if cur == nil then cur = player.force.get_entity_count(entity_name) end
    if max == nil then max = logic.get_machine_limit(player.force, entity_name) end

    for _, player in pairs(force.players) do
        gui.update_entity_limit(player, entity_name, cur, max)
    end
end

function gui.create_all_in_force(force, clean_build)
    local limits = logic.get_all_machine_limits(force)

    for _, player in pairs(force.players) do
        gui.create_all_limits(player, limits, clean_build)
    end
end