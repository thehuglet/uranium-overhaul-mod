data:extend({
    {
        type = "recipe",
        name = "uranium-expanded-blank-catalyst",
        category = "chemistry",
        enabled = true, -- TODO: add proper technologies later
        energy_required = 60,
        ingredients = {
            { type = "item",  name = "calcite",       amount = 50 },
            { type = "item",  name = "copper-ore",    amount = 50 },
            { type = "fluid", name = "sulfuric-acid", amount = 500 }
        },
        results = { { type = "item", name = "uranium-expanded-blank-catalyst", amount = 1 } }
    },
    {
        type = "recipe",
        name = "uranium-expanded-uranium-catalyst",
        category = "uranium-expanded-uranium-forging",
        enabled = true, -- TODO: add proper technologies later
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
        enabled = true, -- TODO: add proper technologies later
        ingredients = { { type = "item", name = "iron-plate", amount = 1 } },
        results = { { type = "item", name = "uranium-expanded-uranium-forge", amount = 1 } }
    },
    {
        type = "recipe",
        name = "uranium-expanded-nuclear-lab",
        enabled = true, -- TODO: add proper technologies later
        ingredients = { { type = "item", name = "iron-plate", amount = 1 } },
        results = { { type = "item", name = "uranium-expanded-nuclear-lab", amount = 1 } }
    },
})
