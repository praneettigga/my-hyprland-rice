-- Hyprland Lua configuration entrypoint.
-- Refer to the wiki for more information:
-- https://wiki.hypr.land/Configuring/Start/

-- Load program definitions used by keybinds and autostart.
local apps = require("modules.programs")

-- Modules are loaded from ./modules (relative to hyprland.lua).
require("modules.monitors")
require("modules.env")
require("modules.decoration")
require("modules.animations")
require("modules.layout")
require("modules.misc")
require("modules.input")
require("modules.windowrules")
require("modules.colors")
require("modules.autostart")()
require("modules.keybinds")(apps)

--require("noctalia.noctalia-colors.conf")
-- source = /home/praneet/.config/hypr/noctalia/noctalia-colors.conf
