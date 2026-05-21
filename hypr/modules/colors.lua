-- #####################
-- ### COLOR PALETTE ###
-- #####################
-- Colors migrated from /home/praneet/.config/hypr/noctalia/noctalia-colors.conf

local colors = {
    primary = "rgb(ffffff)",
    surface = "rgb(131313)",
    secondary = "rgb(c6c6c6)",
    error = "rgb(ffb4ab)",
    tertiary = "rgb(e2e2e2)",
    surface_lowest = "rgb(0e0e0e)",
}

hl.config({
    general = {
        col = {
            active_border = colors.primary,
            inactive_border = colors.surface,
        },
    },
    group = {
        col = {
            border_active = colors.secondary,
            border_inactive = colors.surface,
            border_locked_active = colors.error,
            border_locked_inactive = colors.surface,
        },
        groupbar = {
            col = {
                active = colors.secondary,
                inactive = colors.surface,
                locked_active = colors.error,
                locked_inactive = colors.surface,
            },
        },
    },
})
