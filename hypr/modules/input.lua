-- #############
-- ### INPUT ###
-- #############
-- See https://wiki.hypr.land/Configuring/Basics/Variables/#input

hl.config({
    input = {
        kb_layout = "us",
        numlock_by_default = true,
        follow_mouse = 1,
        sensitivity = 0,
        touchpad = {
            natural_scroll = true,
            scroll_factor = 0.6,
        },
    },
})

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Gestures/
hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/
hl.device({
    name = "lenovo-lenovo-legion-m300-rgb-gaming-mouse",
    sensitivity = -0.3,
    accel_profile = "flat",
})
