require("prototypes.categories.recipe-category")
require("prototypes.categories.fuel-category")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.entity.uranium-forge")
require("prototypes.entity.nuclear-lab-eei")
require("prototypes.entity.nuclear-lab")
require("prototypes.technology")

local lab = data.raw["lab"]["uranium-overhaul-nuclear-lab"]
if lab then
    lab.created_effect = {
        type = "direct",
        action_delivery = {
            type = "instant",
            source_effects = {
                type = "script",
                effect_id = "uranium-overhaul-uranium-lab-init"
            }
        }
    }
end

-- This nerfs the nuclear fuel cell recipe output from 10 -> 1
data.raw["recipe"]["uranium-fuel-cell"].results = {
    { type = "item", name = "uranium-fuel-cell", amount = 1 },
}

-- This moves the uranium fuel cell recipe to the "centrifuging" category
data.raw["recipe"]["uranium-fuel-cell"].category = "centrifuging"

-- This adds new recipes to hand-crafting and assembling machines
-- data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories
table.insert(
    data.raw.character.character.crafting_categories,
    "uranium-overhaul-uranium-forging-or-crafting"
)
table.insert(
    data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories,
    "uranium-overhaul-uranium-forging-or-crafting"
)
table.insert(
    data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories,
    "uranium-overhaul-uranium-forging-or-crafting"
)

-- data.raw.character.character.crafting_categories = {"crafting", "electronics", "pressing", "recycling-or-hand-crafting", "organic-or-hand-crafting", "organic-or-assembling"}
-- data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories = {"basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid", "electronics", "electronics-with-fluid", "pressing", "metallurgy-or-assembling", "organic-or-hand-crafting", "organic-or-assembling", "electronics-or-assembling", "cryogenics-or-assembling", "crafting-with-fluid-or-metallurgy"}
