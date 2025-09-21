local sounds = require("__base__.prototypes.entity.sounds")
local BASE_ANIMATION_SPEED = 0.32

data:extend({ {
    type = "assembling-machine",
    name = "uranium-overhaul-uranium-forge",
    icon = "__uranium-overhaul__/graphics/icons/uranium-forge-icon.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.2, result = "uranium-overhaul-uranium-forge" },
    max_health = 350,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.2, -2.2 }, { 2.2, 2.2 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    drawing_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    effect_receiver = {
        base_effect = {
            productivity = 0.5
        }
    },
    perceived_performance = {
        maximum = 20,
        minimum = 0.25
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    impact_category = "metal-large",
    working_sound =
    {
        sound = sound_variations("__base__/sound/centrifuge", 3, 0.3, volume_multiplier("main-menu", 1.5)),
        fade_in_ticks = 4,
        fade_out_ticks = 20
    },
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    module_slots = 4,
    allowed_effects = { "consumption", "speed", "productivity", "pollution", "quality" },
    crafting_categories = { "centrifuging", "uranium-overhaul-uranium-forging" },
    crafting_speed = 2.0,
    energy_source = { type = "electric", usage_priority = "secondary-input", emissions_per_second = 6 },
    energy_usage = "1MW",
    graphics_set = {
        always_draw_idle_animation = true,
        idle_animation = {
            layers = {
                {
                    animation_speed = BASE_ANIMATION_SPEED,
                    scale = 0.527,
                    filenames = {
                        "__uranium-overhaul__/graphics/entity/uranium-forge/uranium-forge-animation.png",
                    },
                    blend_mode = "normal",
                    width = 300,
                    height = 360,
                    line_length = 10,
                    lines_per_file = 8,
                    frame_count = 80,
                    shift = util.by_pixel_hr(0, -21),
                    tint = { r = 1, g = 1, b = 1, a = 1 },
                },
                {
                    animation_speed = BASE_ANIMATION_SPEED,
                    scale = 0.527,
                    filenames = {
                        "__uranium-overhaul__/graphics/entity/uranium-forge/uranium-forge-color1.png",
                    },
                    blend_mode = "normal",
                    width = 300,
                    height = 360,
                    line_length = 10,
                    lines_per_file = 8,
                    frame_count = 80,
                    shift = util.by_pixel_hr(0, -21),
                    tint = { r = 0.28627450980392155, g = 0.38823529411764707, b = 0.1607843137254902, a = 1 },
                    draw_as_glow = true,
                },
                {
                    scale = 0.527,
                    filenames = {
                        "__uranium-overhaul__/graphics/entity/uranium-forge/uranium-forge-shadow.png",
                    },
                    blend_mode = "normal",
                    width = 675,
                    height = 375,
                    line_length = 1,
                    lines_per_file = 1,
                    frame_count = 1,
                    repeat_count = 80,
                    shift = util.by_pixel_hr(0.5, -21),
                    tint = { r = 1, g = 1, b = 1, a = 1 },
                    draw_as_shadow = true,
                },
            },
        },
        working_visualisations = {
            {
                effect = "uranium-glow",
                fadeout = true,
                light = { intensity = 0.2, size = 15, shift = { 0, 0 }, color = { 0, 1, 0 } }
            },
            {
                effect = "uranium-glow",
                fadeout = true,
                animation = {
                    layers = {
                        {
                            animation_speed = BASE_ANIMATION_SPEED,
                            scale = 0.527,
                            filenames = {
                                "__uranium-overhaul__/graphics/entity/uranium-forge/uranium-forge-emission1.png",
                            },
                            blend_mode = "additive",
                            width = 300,
                            height = 360,
                            line_length = 10,
                            lines_per_file = 8,
                            frame_count = 80,
                            shift = util.by_pixel_hr(0, -21),
                            tint = { r = 1, g = 1, b = 1, a = 1 },
                            draw_as_glow = true,
                        },
                        {
                            animation_speed = BASE_ANIMATION_SPEED,
                            scale = 0.527,
                            filenames = {
                                "__uranium-overhaul__/graphics/entity/uranium-forge/uranium-forge-emission2.png",
                            },
                            blend_mode = "additive",
                            width = 300,
                            height = 360,
                            line_length = 10,
                            lines_per_file = 8,
                            frame_count = 80,
                            shift = util.by_pixel_hr(0, -21),
                            tint = { r = 0.6392156862745098, g = 1, b = 0, a = 0.9098039215686274 },
                            draw_as_glow = true,
                        }
                    }
                }
            }
        }
    },
    circuit_connector = circuit_connector_definitions.create_vector(
        universal_connector_template,
        {
            {
                variation = 9,
                main_offset = util.by_pixel_hr(79, 38),
                shadow_offset = util.by_pixel_hr(79, 26),
                show_shadow = true,
            },
            {
                variation = 9,
                main_offset = util.by_pixel_hr(79, 38),
                shadow_offset = util.by_pixel_hr(79, 26),
                show_shadow = true,
            },
            {
                variation = 9,
                main_offset = util.by_pixel_hr(79, 38),
                shadow_offset = util.by_pixel_hr(79, 26),
                show_shadow = true,
            },
            {
                variation = 9,
                main_offset = util.by_pixel_hr(79, 38),
                shadow_offset = util.by_pixel_hr(79, 26),
                show_shadow = true,
            },
        }
    ),
} })
