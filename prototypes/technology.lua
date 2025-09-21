data:extend({
    {
        type = "technology",
        name = "uranium-overhaul-uranium-forge",
        icon = "__uranium-overhaul__/graphics/technology/uranium-forge.png",
        icon_size = 320,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "uranium-overhaul-uranium-forge"
            },
        },
        research_trigger = {
            type = "craft-item",
            item = "uranium-235",
            count = 100,
        },
        prerequisites = { "kovarex-enrichment-process" },
    },
    {
        type = "technology",
        name = "uranium-overhaul-nuclear-lab",
        icon = "__uranium-overhaul__/graphics/technology/nuclear-lab.png",
        icon_size = 320,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "uranium-overhaul-nuclear-lab"
            },
            {
                type = "unlock-recipe",
                recipe = "uranium-overhaul-blank-catalyst"
            },
            {
                type = "unlock-recipe",
                recipe = "uranium-overhaul-uranium-catalyst"
            },
        },
        unit = {
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "chemical-science-pack",   1 },
                { "production-science-pack", 1 },
                { "space-science-pack",      1 },
            },
            time = 30,
            count = 5000
        },
        prerequisites = { "uranium-overhaul-uranium-forge" },
    },
})
