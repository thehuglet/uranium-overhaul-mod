local unit_multipliers = require("unit_multipliers")

local tps = 60
local uranium_lab_eei_working_power_usage = 600 * unit_multipliers.k / tps

-- To disable a lab fully this needs to run for 2 consecutive ticks
--
-- This exists because just disabling the lab doesn't update the animation to off, thus making it stuck,
-- setting heat to 0 sets the animation state to off, then next tick the lab is disabled
function disable_lab(data)
    if data.anim_was_reset then
        data.lab.disabled_by_script = true
    else
        data.lab.burner.heat = 0
    end
    data.anim_was_reset = true
end

-- Labs should only be disabled by this function
-- to ensure proper state on `anim_was_reset`
function enable_lab(data)
    data.lab.disabled_by_script = false
    data.anim_was_reset = false
end

script.on_event(defines.events.on_script_trigger_effect, function(event)
    if event.effect_id ~= "uranium-expanded-uranium-lab-init" then return end

    local lab = event.source_entity
    local surface = lab.surface
    local pos = lab.position

    -- spawn the hidden electric interface
    local eei = surface.create_entity {
        name = "uranium-expanded-nuclear-lab-eei",
        position = pos,
        force = lab.force,
        create_build_effect_smoke = false,
    }

    eei.energy = 1 * unit_multipliers.M
    local reg_id = script.register_on_object_destroyed(lab)

    storage.uranium_expanded_nuclear_labs = storage.uranium_expanded_nuclear_labs or {}
    storage.uranium_expanded_nuclear_labs[reg_id] = {
        lab = lab,
        eei = eei,
        -- this exists to delay disabling the lab
        -- after the heat was lowered to 0 to update animation
        anim_was_reset = false,
    }
end)

script.on_event(defines.events.on_object_destroyed, function(event)
    local data = storage.uranium_expanded_nuclear_labs[event.registration_number]
    if not data then return end

    if data.eei.valid then
        data.eei.destroy()
    end

    storage.uranium_expanded_nuclear_labs[event.registration_number] = nil
end)

script.on_event(defines.events.on_tick, function(event)
    if not storage.uranium_expanded_nuclear_labs then return end

    for reg_id, data in pairs(storage.uranium_expanded_nuclear_labs) do
        if not data then
            storage.uranium_expanded_nuclear_labs[reg_id] = nil
            return
        end

        local catalyst_is_in_inventory = not data.lab.burner.inventory.is_empty()
        local catalyst_is_burning = data.lab.burner.remaining_burning_fuel > 0

        local is_state_no_power = data.eei.is_connected_to_electric_network()
        local is_state_missing_catalyst = catalyst_is_in_inventory or catalyst_is_burning
        local is_state_low_power = data.eei.energy < data.eei.electric_buffer_size

        -- The order of the if-else chain here is
        -- important as it signifies the priority
        -- of states to simplify state checks
        if is_state_no_power then
            disable_lab(data)
            data.eei.power_usage = uranium_lab_eei_working_power_usage

            data.lab.custom_status = {
                diode = defines.entity_status_diode.red,
                label = { "entity-status.no-power" }
            }
        elseif is_state_missing_catalyst then
            -- We enable the lab in this state to ensure it
            -- can consume the catalyst in inventory (fuel)
            --
            -- Enabling it will not cause it to
            -- run without burner fuel anyway
            enable_lab(data)
            data.eei.power_usage = 0

            data.lab.custom_status = {
                diode = defines.entity_status_diode.red,
                label = { "entity-status.missing-uranium-catalyst" }
            }
        elseif is_state_low_power then
            -- There's no API support for slowing the lab down during
            -- runtime meaning its more reasonable to just disable it
            disable_lab(data)
            data.eei.power_usage = uranium_lab_eei_working_power_usage

            data.lab.custom_status = {
                diode = defines.entity_status_diode.yellow,
                label = { "entity-status.low-power" }
            }
        else
            -- Default happy state (lab running)
            enable_lab(data)
            data.eei.power_usage = uranium_lab_eei_working_power_usage
            data.lab.custom_status = nil
        end
    end
end)
