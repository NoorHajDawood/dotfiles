-- ==================
-- STARTUP APPS
-- ==================

local monitors = require("monitors")
local mainMonitor = monitors.mainMonitor
local secondMonitor = monitors.secondMonitor

-- ==================
-- WORKSPACES
-- ==================
-- Initialize persistent workspaces on specific monitors
-- workspace = workspace_number, persistent (true/false), monitor (monitor_name)

-- Workspaces 1-5 on secondary monitor
for i = 1, 5 do
    hl.workspace_rule({
        workspace = tostring(i),
        persistent = true,
        monitor = secondMonitor
    })
end

-- Workspaces 6-10 on main monitor
for i = 6, 10 do
    hl.workspace_rule({
        workspace = tostring(i),
        persistent = true,
        monitor = mainMonitor
    })
end

-- ==================
-- AUTOSTART APPS ON SPECIFIC WORKSPACES
-- ==================
-- exec-once = [workspace <number> silent] <application>
-- exec-once=[workspace 2 silent] discord-canary
-- exec-once=[workspace 2 silent] gtk-launch Homarr

hl.on("hyprland.start", function()
    hl.exec_cmd([[bash -c "wl-paste --watch cliphist store &"]])
    hl.exec_cmd("dms run")
    hl.exec_cmd("/usr/lib/mate-polkit/polkit-mate-authentication-agent-1")
    hl.exec_cmd("hyprctl setcursor Bibata-Modern-Classic 20")
    hl.exec_cmd("noisetorch -i")
    hl.exec_cmd("/usr/bin/pypr")
    hl.exec_cmd("[workspace 1 silent] kitty -e btop")
    hl.exec_cmd("[workspace 6 silent] zen-browser -P Main")
    hl.exec_cmd("[workspace 8 silent] steam -silent")
end)

