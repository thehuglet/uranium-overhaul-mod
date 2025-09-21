data:extend({
    {
        type = "recipe",
        name = "uranium-overhaul-blank-catalyst",
        category = "chemistry",
        enabled = false,
        energy_required = 60,
        ingredients = {
            { type = "item",  name = "calcite",       amount = 50 },
            { type = "item",  name = "copper-ore",    amount = 50 },
            { type = "fluid", name = "sulfuric-acid", amount = 500 },
        },
        results = { { type = "item", name = "uranium-overhaul-blank-catalyst", amount = 1 } },
        allow_productivity = true,
    },
    {
        type = "recipe",
        name = "uranium-overhaul-uranium-catalyst",
        icon = "__uranium-overhaul__/graphics/icons/uranium-catalyst-icon.png",
        category = "uranium-overhaul-uranium-forging",
        subgroup = "uranium-processing",
        enabled = false,
        energy_required = 20,
        ingredients = {
            { type = "item", name = "uranium-overhaul-blank-catalyst", amount = 3 },
            { type = "item", name = "uranium-235",                     amount = 15 },
            { type = "item", name = "uranium-238",                     amount = 12 },
        },
        results = {
            { type = "item", name = "uranium-overhaul-uranium-catalyst", amount = 2 },
            { type = "item", name = "uranium-238",                       amount = 1 }
        },
        allow_productivity = false,
        allow_quality = false,
    },
    {
        type = "recipe",
        name = "uranium-overhaul-uranium-forge",
        category = "uranium-overhaul-uranium-forging-or-crafting",
        enabled = false,
        energy_required = 5,
        ingredients = {
            { type = "item", name = "electric-engine-unit", amount = 10 },
            { type = "item", name = "processing-unit",      amount = 50 },
            { type = "item", name = "refined-concrete",     amount = 100 },
            { type = "item", name = "centrifuge",           amount = 1 },
        },
        results = { { type = "item", name = "uranium-overhaul-uranium-forge", amount = 1 } },
    },
    {
        type = "recipe",
        name = "uranium-overhaul-nuclear-lab",
        category = "crafting-with-fluid",
        enabled = false,
        energy_required = 10,
        ingredients = {
            { type = "item",  name = "steel-plate",      amount = 100 },
            { type = "item",  name = "processing-unit",  amount = 100 },
            { type = "item",  name = "refined-concrete", amount = 100 },
            { type = "item",  name = "lab",              amount = 1 },
            { type = "fluid", name = "lubricant",        amount = 50 },
        },
        results = { { type = "item", name = "uranium-overhaul-nuclear-lab", amount = 1 } }
    },
})
