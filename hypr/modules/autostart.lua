-- #################
-- ### AUTOSTART ###
-- #################

return function()
    hl.on("hyprland.start", function()
        hl.exec_cmd("qs -c noctalia-shell")
        hl.dispatch(hl.dsp.exec_cmd("zen-browser", { workspace = "2 silent" }))

        hl.exec_cmd("wl-paste --type text --watch cliphist store")
        hl.exec_cmd("wl-paste --type image --watch cliphist store")
        hl.exec_cmd("wl-clip-persist --clipboard regular")

        -- Pass Hyprland environment to D-Bus/systemd
        hl.exec_cmd(
            "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
        )

        hl.exec_cmd(
            "systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
        )

        -- Initialize KWallet
        hl.exec_once("/usr/lib/pam_kwallet_init")

    end)
end
