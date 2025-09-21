require("prototypes.categories.recipe-category")
require("prototypes.categories.fuel-category")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.entity.uranium-forge")
require("prototypes.entity.nuclear-lab-eei")
require("prototypes.entity.nuclear-lab")
require("prototypes.technology")

local lab = data.raw["lab"]["uranium-expanded-nuclear-lab"]
if lab then
    lab.created_effect = {
        type = "direct",
        action_delivery = {
            type = "instant",
            source_effects = {
                type = "script",
                effect_id = "uranium-expanded-uranium-lab-init"
            }
        }
    }
end
