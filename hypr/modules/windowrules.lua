-- ##############################
-- ### WINDOWS AND WORKSPACES ###
-- ##############################
-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- See https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

hl.window_rule({
    name = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

-- Hyprland-run windowrule
hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})

hl.window_rule({
    name = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move = "20 monitor_h-120",
    float = true,
})

-- Persistent workspaces / Visible workspaces on waybar
hl.workspace_rule({ workspace = "1", monitor = "eDP-2", persistent = true, default = true })
hl.workspace_rule({ workspace = "2", monitor = "eDP-2", persistent = true })
hl.workspace_rule({ workspace = "3", monitor = "eDP-2", persistent = true })
hl.workspace_rule({ workspace = "4", monitor = "eDP-2", persistent = true })
hl.workspace_rule({ workspace = "5", monitor = "eDP-2", persistent = true })

-- Blur rule for app launcher
hl.layer_rule({
    match = { namespace = "launcher" },
    blur = true,
    ignore_alpha = 0.5,
})
