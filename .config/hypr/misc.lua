-- ==================
-- MISC
-- ==================

local monitors = require("monitors")
local mainMonitor = monitors.mainMonitor

hl.config({
    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        vrr = 2,
    },
    cursor = {
        default_monitor = mainMonitor,
        enable_hyprcursor = true,
    },
})

