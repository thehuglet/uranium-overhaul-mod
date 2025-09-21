data:extend({
    {
        type = "electric-energy-interface",
        name = "uranium-overhaul-nuclear-lab-eei",
        icon = "__uranium-overhaul__/graphics/icons/nuclear-lab-icon.png",
        energy_usage = "0kW", -- This is 0 as this value is strictly controlled at runtime
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            buffer_capacity = "600kJ",
            input_flow_limit = "1MW",
            output_flow_limit = "0W",
        },
        flags = {
            "not-blueprintable",
            "not-deconstructable",
            "not-on-map",
            "not-upgradable"
        },
        collision_box = { { -2.2, -2.2 }, { 2.2, 2.2 } },
        selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
        selectable_in_game = false,
        collision_mask = { layers = {} }, -- no collision
        factoriopedia_alternative = "uranium-overhaul-nuclear-lab",
        continuous_animation = false,
        gui_mode = "none",
    }
})
