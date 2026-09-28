data:extend({
    --aluminium-plate
    {
        type = "recipe",
        name = "aluminium-plate",
        category = "smelting",
        enabled = true,
        energy_required = 1.9,
        ingredients = {
            {
                type = "item",
                name = "aluminium-ore",
                amount = 1
            }
        },
        results = {
            {
                type = "item",
                name = "aluminium-plate",
                amount = 1
            }
        }
    },
    --aluminium-cable
    {
        type = "recipe",
        name = "aluminium-cable",
        enabled = false,
        energy_required = 0.4,
        ingredients = {
            {
            type = "item",
            name = "aluminium-plate",
            amount = 1
            }
        },
        results = {
            {
            type = "item",
            name = "aluminium-cable",
            amount = 4
            }
        }
    },
    --firearm-magazine-with-aluminium
    {
        type = "recipe",
        name = "firearm-magazine-with-aluminium",
        enabled = true,
        energy_required = 1,
        ingredients = {
            {
            type = "item",
            name = "aluminium-plate",
            amount = 3
            }
            {
                type = "item",
                name = "iron-plate",
                amount = 1
            }
        },
        results = {
            {
            type = "item",
            name = "firearm-magazine",
            amount = 1
            }
        }
    },
    --electronic-circuit-with-aluminium
    {
        type = "recipe",
        name = "electronic-circuit-with-aluminium",
        category = "crafting",
        enabled = false,
        energy_required = 0.8,
        ingredients = {
            {
                type = "item",
                name = "iron-plate",
                amount = 1
            },
            {
                type = "item",
                name = "aluminium-cable",
                amount = 4
            }
        },
        results = {
            {
                type = "item",
                name = "electronic-circuit",
                amount = 1
            }
        }
    },
    {
        type = "recipe",
        name = "small-electric-pole-with-aluminium",
        category = "crafting",
        enabled = false,
        energy_required = 0.5,
        ingredients = {
            {
                type = "item",
                name = "wood",
                amount = 1
            },
            {
                type = "item",
                name = "aluminium-cable",
                amount = 2
            }
        },
        results = {
            {
                type = "item",
                name = "small-electric-pole",
                amount = 2
            }
        }
    },
    --big-electric-pole-with-aluminium
    {
        type = "recipe",
        name = "big-electric-pole-with-aluminium",
        category = "crafting",
        enabled = false,
        energy_required = 0.5,
        ingredients = {
            {
                type = "item",
                name = "iron-stick",
                amount = 8
            },
            {
                type = "item",
                name = "iron-plate",
                amount = 5
            },
            {
                type = "item",
                name = "aluminium-cable",
                amount = 4
            }
        },
        results = {
            {
                type = "item",
                name = "big-electric-pole",
                amount = 1
            }
        }
    },
    {
        type = "recipe",
        name = "medium-electric-pole-with-aluminium",
        category = "crafting",
        enabled = false,
        ingredients = {
            {
                type = "item",
                name = "iron-stick",
                amount = 4
            },
            {
                type = "item",
                name = "steel-plate",
                amount = 2
            },
            {
                type = "item",
                name = "aluminium-cable",
                amount = 2
            }
        },
        results = {
            {
                type="item",
                name="medium-electric-pole",
                amount=1
            }
        }
    },
})
