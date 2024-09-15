-- construction-robot
data:extend(
{
-- Recipe
    {
        type = "recipe",
        name = "construction-robot-fission",
        enabled = false,
        ingredients =
        {
            {"flying-robot-frame", 1},
            {"electronic-circuit", 2},
            {"processing-unit", 5},
            {"uranium-fuel-cell", 2}
        },
        result = "construction-robot-fission"
    },

-- Item
    {
        type = "item",
        name = "construction-robot-fission",
        icon = "__Fission_Robots__/graphics/icon-construction-robot-fusion.png",
        icon_size = 32,
        subgroup = "logistic-network",
        order = "a[robot]-c[construction-robot]-c[fission]",
        place_result = "construction-robot-fission",
        stack_size = 100
    },
-- Entity
   {
        type = "construction-robot",
        name = "construction-robot-fission",
        icon = "__Fission_Robots__/graphics/icon-construction-robot-fusion.png",
        icon_size = 34,
        flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
        minable = {hardness = 0.1, mining_time = 0.1, result = "construction-robot-fission"},
        resistances = { { type = "fire", percent = 85 } },
        max_health = 200,
        dying_explosion = "construction-robot-explosion",
        collision_box = {{0, 0}, {0, 0}},
        selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
        max_payload_size = 1,
        speed = 0.08,
        transfer_distance = 0.5,
        max_energy = "1.5MJ",
        energy_per_tick = "0kJ",
        speed_multiplier_when_out_of_energy = 0.2,
        energy_per_move = "0kJ",
        min_to_charge = 0.2,
        max_to_charge = 0.95,
        working_light = {intensity = 0.8, size = 3},
        idle = {
            filename = "__Fission_Robots__/graphics/construction-robot/construction-robot-fusion.png",
            priority = "high",
            line_length = 16,
            width = 32,
            height = 36,
            frame_count = 1,
            shift = {0, -0.15625},
            direction_count = 16
        },
        in_motion = {
            filename = "__Fission_Robots__/graphics/construction-robot/construction-robot-fusion.png",
            priority = "high",
            line_length = 16,
            width = 32,
            height = 36,
            frame_count = 1,
            shift = {0, -0.15625},
            direction_count = 16,
            y = 36
        },
        shadow_idle = {
            filename = "__Fission_Robots__/graphics/construction-robot/construction-robot-fusion-shadow.png",
            priority = "high",
            line_length = 16,
            width = 50,
            height = 24,
            frame_count = 1,
            shift = {1.09375, 0.59375},
            direction_count = 16
        },
        shadow_in_motion = {
            filename = "__Fission_Robots__/graphics/construction-robot/construction-robot-fusion-shadow.png",
            priority = "high",
            line_length = 16,
            width = 50,
            height = 24,
            frame_count = 1,
            shift = {1.09375, 0.59375},
            direction_count = 16
        },
        working = {
            filename = "__Fission_Robots__/graphics/construction-robot/construction-robot-fusion-working.png",
            priority = "high",
            line_length = 2,
            width = 28,
            height = 36,
            frame_count = 2,
            shift = {0, -0.15625},
            direction_count = 16,
            animation_speed = 0.3,
        },
        shadow_working = {
            stripes = util.multiplystripes(2, {
                {
                    filename = "__Fission_Robots__/graphics/construction-robot/construction-robot-fusion-shadow.png",
                    width_in_frames = 16,
                    height_in_frames = 1,
                }
            }),
            priority = "high",
            width = 50,
            height = 24,
            frame_count = 2,
            shift = {1.09375, 0.59375},
            direction_count = 16
        },
        smoke = {
            filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
            width = 39,
            height = 32,
            frame_count = 19,
            line_length = 19,
            shift = {0.078125, -0.15625},
            animation_speed = 0.3,
        },
        sparks = {
            {
                filename = "__base__/graphics/entity/sparks/sparks-01.png",
                width = 39,
                height = 34,
                frame_count = 19,
                line_length = 19,
                shift = {-0.109375, 0.3125},
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-02.png",
                width = 36,
                height = 32,
                frame_count = 19,
                line_length = 19,
                shift = {0.03125, 0.125},
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-03.png",
                width = 42,
                height = 29,
                frame_count = 19,
                line_length = 19,
                shift = {-0.0625, 0.203125},
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-04.png",
                width = 40,
                height = 35,
                frame_count = 19,
                line_length = 19,
                shift = {-0.0625, 0.234375},
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-05.png",
                width = 39,
                height = 29,
                frame_count = 19,
                line_length = 19,
                shift = {-0.109375, 0.171875},
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-06.png",
                width = 44,
                height = 36,
                frame_count = 19,
                line_length = 19,
                shift = {0.03125, 0.3125},
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
        },
        working_sound = nil,
        cargo_centered = {0.0, 0.2},
        construction_vector = {0.30, 0.22},
    }
})
