data:extend({
    {
        type = "technology",
        name = "electronics-with-aluminium",
        icon = "__base__/graphics/technology/electronics.png",
        icon_size = 256,
        icon_mipmaps = 4,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "aluminium-cable"
            },
            {
                type = "unlock-recipe",
                recipe = "electronic-circuit-with-aluminium"
            },
            {
                type = "unlock-recipe",
                recipe = "small-electric-pole-with-aluminium"
            }
        },
        research_trigger =
        {
            type = "craft-item",
            item = "aluminium-plate",
            count = 20
        },
        order = "c-a"
    },
    {
        type = "technology",
        name = "electric-energy-distribution-1-with-aluminium",
        icon = "__base__/graphics/technology/electric-energy-distribution-1.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "medium-electric-pole-with-aluminium"
            },
            {
                type = "unlock-recipe",
                recipe = "big-electric-pole-with-aluminium"
            },
            {
                type = "unlock-recipe",
                recipe = "iron-stick"
            }
        },
        prerequisites = {"steel-processing", "logistic-science-pack"},
        unit =
        {
            count = 150,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1}
            },
            time = 25
        }
    },
})
