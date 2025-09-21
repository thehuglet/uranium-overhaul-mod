data:extend({
    {
        type = "technology",
        name = "uranium-expanded-uranium-forge",
        icon = "__uranium-expanded__/graphics/technology/uranium-forge.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "asteroid-collector"
            },
            {
                type = "unlock-recipe",
                recipe = "crusher"
            },
            {
                type = "unlock-recipe",
                recipe = "metallic-asteroid-crushing"
            },
            {
                type = "unlock-recipe",
                recipe = "carbonic-asteroid-crushing"
            },
            {
                type = "unlock-recipe",
                recipe = "oxide-asteroid-crushing"
            },
            {
                type = "unlock-recipe",
                recipe = "cargo-bay"
            }
        },
        prerequisites = { "rocket-silo" },
        research_trigger = { type = "create-space-platform" }
    },
})
