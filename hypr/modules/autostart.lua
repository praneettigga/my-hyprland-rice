-- #################
-- ### AUTOSTART ###
-- #################
-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

return function()
    hl.on("hyprland.start", function()
        hl.exec_cmd("qs -c noctalia-shell")
        hl.dispatch(hl.dsp.exec_cmd("zen-browser", { workspace = "2 silent" }))
        hl.exec_cmd("wl-paste --type text --watch cliphist store")
        hl.exec_cmd("wl-paste --type image --watch cliphist store")
        hl.exec_cmd("wl-clip-persist --clipboard regular")
        hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    end)
end
