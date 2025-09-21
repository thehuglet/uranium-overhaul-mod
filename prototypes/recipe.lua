data:extend({
    {
        type = "recipe",
        name = "uranium-expanded-blank-catalyst",
        category = "chemistry",
        enabled = false,
        energy_required = 60,
        ingredients = {
            { type = "item",  name = "calcite",       amount = 50 },
            { type = "item",  name = "copper-ore",    amount = 50 },
            { type = "fluid", name = "sulfuric-acid", amount = 500 },
        },
        results = { { type = "item", name = "uranium-expanded-blank-catalyst", amount = 1 } }
    },
    {
        type = "recipe",
        name = "uranium-expanded-uranium-catalyst",
        category = "uranium-expanded-uranium-forging",
        enabled = false,
        energy_required = 10,
        ingredients = {
            { type = "item", name = "uranium-expanded-blank-catalyst", amount = 1 },
            { type = "item", name = "uranium-235",                     amount = 50 },
        },
        results = { { type = "item", name = "uranium-expanded-uranium-catalyst", amount = 1 } }
    },
    {
        type = "recipe",
        name = "uranium-expanded-uranium-forge",
        category = "crafting",
        enabled = false,
        ingredients = {
            { type = "item", name = "electric-engine-unit", amount = 10 },
            { type = "item", name = "processing-unit",      amount = 50 },
            { type = "item", name = "refined-concrete",     amount = 100 },
            { type = "item", name = "centrifuge",           amount = 1 },
        },
        results = { { type = "item", name = "uranium-expanded-uranium-forge", amount = 1 } }
    },
    {
        type = "recipe",
        name = "uranium-expanded-nuclear-lab",
        category = "crafting-with-fluid",
        enabled = false,
        ingredients = {
            { type = "item",  name = "steel-plate",      amount = 100 },
            { type = "item",  name = "processing-unit",  amount = 100 },
            { type = "item",  name = "refined-concrete", amount = 100 },
            { type = "item",  name = "lab",              amount = 1 },
            { type = "fluid", name = "lubricant",        amount = 50 },
        },
        results = { { type = "item", name = "uranium-expanded-nuclear-lab", amount = 1 } }
    },
})
