-- #####################
-- ### LOOK AND FEEL ###
-- #####################
-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/

hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 10,

        border_size = 1,

        col = {
            active_border = "rgb(2a3a3e)",
            inactive_border = "rgb(1e2c2f)",
        },

        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },

    decoration = {
        rounding = 6,
        rounding_power = 10,

        active_opacity = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled = true,
            range = 15,
            render_power = 3,
            color = "rgba(0a0a0add)",
        },

        blur = {
            enabled = true,
            size = 8,
            passes = 3,
            ignore_opacity = true,
            new_optimizations = true,
            noise = 0.1,
            contrast = 1.5,
            vibrancy = 0.1696,
        },
    },
})
