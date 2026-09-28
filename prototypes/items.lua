local sounds = require("__base__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local simulations = require("__base__.prototypes.factoriopedia-simulations")

data:extend({
    {
        type = "item",
        name = "aluminium-ore",
        icon = "__extension_resource__/graphics/icons/aluminium-ore/aluminium-ore.png",
        pictures =
        {
            {size = 64, filename = "__extension_resource__/graphics/icons/aluminium-ore/aluminium-ore.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__extension_resource__/graphics/icons/aluminium-ore/aluminium-ore-1.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__extension_resource__/graphics/icons/aluminium-ore/aluminium-ore-2.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__extension_resource__/graphics/icons/aluminium-ore/aluminium-ore-3.png", scale = 0.5, mipmap_count = 4}
        },
        subgroup = "raw-resource",
        color_hint = { text = "C" },
        order = "f[aluminium-ore]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        weight = 2 * kg
    },
    {
        type = "item",
        name = "aluminium-plate",
        icon = "__extension_resource__/graphics/icons/aluminium-plate.png",
        subgroup = "raw-material",
        color_hint = { text = "I" },
        order = "a[smelting]-a[aluminium-plate]",
        inventory_move_sound = item_sounds.metal_small_inventory_move,
        pick_sound = item_sounds.metal_small_inventory_pickup,
        drop_sound = item_sounds.metal_small_inventory_move,
        stack_size = 100,
        random_tint_color = item_tints.iron_rust
    },
    {
        type = "item",
        name = "aluminium-cable",
        icon = "__extension_resource__/graphics/icons/aluminium-cable.png",
        subgroup = "intermediate-product",
        order = "a[basic-intermediates]-c[aluminium-cable]",
        inventory_move_sound = item_sounds.wire_inventory_move,
        pick_sound = item_sounds.wire_inventory_pickup,
        drop_sound = item_sounds.wire_inventory_move,
        stack_size = 200,
        weight = 0.08 * kg,
        ingredient_to_weight_coefficient = 0.08
    },
})
