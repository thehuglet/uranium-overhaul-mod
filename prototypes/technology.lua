data:extend({
    {
        type = "technology",
        name = "uranium-expanded-uranium-forge",
        icon = "__uranium-expanded__/graphics/technology/uranium-forge.png",
        icon_size = 320,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "uranium-expanded-uranium-forge"
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
        name = "uranium-expanded-nuclear-lab",
        icon = "__uranium-expanded__/graphics/technology/nuclear-lab.png",
        icon_size = 320,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "uranium-expanded-nuclear-lab"
            },
            {
                type = "unlock-recipe",
                recipe = "uranium-expanded-blank-catalyst"
            },
            {
                type = "unlock-recipe",
                recipe = "uranium-expanded-uranium-catalyst"
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
        prerequisites = { "uranium-expanded-uranium-forge" },
    },
})
