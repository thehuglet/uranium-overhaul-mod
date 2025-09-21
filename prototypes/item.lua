data:extend({
    {
        type = "item",
        name = "uranium-overhaul-blank-catalyst",
        icon = "__uranium-overhaul__/graphics/icons/blank-catalyst-icon.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "z[blank-catalyst]",
        stack_size = 50,
    },
    {
        type = "item",
        name = "uranium-overhaul-uranium-catalyst",
        icon = "__uranium-overhaul__/graphics/icons/uranium-catalyst-icon.png",
        icon_size = 64,
        pictures = {
            layers = {
                {
                    size = 64,
                    filename = "__uranium-overhaul__/graphics/icons/uranium-catalyst-icon.png",
                    scale = 0.5,
                    mipmap_count = 4
                },
                {
                    draw_as_light = true,
                    blend_mode = "additive",
                    size = 64,
                    filename = "__uranium-overhaul__/graphics/icons/uranium-catalyst-icon.png",
                    scale = 0.5,
                    tint = { 0.3, 0.3, 0.3, 0.3 }
                }
            }
        },
        subgroup = "intermediate-product",
        order = "z[uranium-catalyst]",
        fuel_value = "1GJ",
        stack_size = 1,
        fuel_category = "uranium-overhaul-uranium-catalyst",
        burnt_result = "uranium-overhaul-blank-catalyst",
    },
    {
        type = "item",
        name = "uranium-overhaul-uranium-forge",
        icon = "__uranium-overhaul__/graphics/icons/uranium-forge-icon.png",
        icon_size = 64,
        subgroup = "production-machine",
        order = "z[uranium-forge]",
        place_result = "uranium-overhaul-uranium-forge",
        stack_size = 10,
    },
    {
        type = "item",
        name = "uranium-overhaul-nuclear-lab",
        icon = "__uranium-overhaul__/graphics/icons/nuclear-lab-icon.png",
        icon_size = 64,
        subgroup = "production-machine",
        order = "z[nuclear-lab]",
        place_result = "uranium-overhaul-nuclear-lab",
        stack_size = 5,
    },

})
