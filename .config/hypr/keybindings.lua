-- ==================
-- KEYBINDINGS
-- ==================
local monitors = require("monitors")
local mainMonitor = monitors.mainMonitor
local secondMonitor = monitors.secondMonitor

local mod = "SUPER"

-- === Application Launchers ===
hl.bind(mod .. " + T", hl.dsp.exec_cmd("kitty"))
hl.bind(mod .. " + M", hl.dsp.exec_cmd("kitty rmpc"))
hl.bind(mod .. " + B", hl.dsp.exec_cmd("zen-browser"))
hl.bind(mod .. " + E", hl.dsp.exec_cmd("kitty yazi"))
hl.bind(mod .. " + S", hl.dsp.exec_cmd("steam"))
hl.bind(mod .. " + slash", hl.dsp.exec_cmd("list_keybinds"))

-- === DankMateriallShell Shortcuts ===
hl.bind(mod .. " + space", hl.dsp.exec_cmd("dms ipc call spotlight toggle"))
hl.bind(mod .. " + comma", hl.dsp.exec_cmd("dms ipc call settings toggle"))
hl.bind(mod .. " + N", hl.dsp.exec_cmd("dms ipc call notifications toggle"))
hl.bind(mod .. " + SHIFT + N", hl.dsp.exec_cmd("dms ipc call notepad toggle"))
hl.bind(mod .. " + SHIFT + B", hl.dsp.exec_cmd("dms ipc call bar toggle name \"Main Bar\""))
-- bind = $mod, TAB, exec, dms ipc call hypr toggleOverview # Toggle Hyprland overview mode
hl.bind(mod .. " + V", hl.dsp.exec_cmd("dms ipc call clipboard toggle"))

-- === Pypr === #
hl.bind(mod .. " + SHIFT + V", hl.dsp.exec_cmd("pypr toggle volume"))
hl.bind(mod .. " + RETURN", hl.dsp.exec_cmd("pypr toggle term"))
hl.bind(mod .. " + Y", hl.dsp.exec_cmd("pypr attach"))

-- === Security ===
hl.bind(mod .. " + ALT + L", hl.dsp.exec_cmd("dms ipc call lock lock"))
hl.bind(mod .. " + SHIFT + L", hl.dsp.exec_cmd("dms ipc call powermenu toggle"))
hl.bind(mod .. " + SHIFT + E", hl.dsp.exit())
hl.bind(mod .. " + SHIFT + R", hl.dsp.exec_cmd("dms kill && hyprctl dispatch exec dms run"))
hl.bind("CTRL + ALT + Delete", hl.dsp.exec_cmd("dms ipc call processlist toggle"))

-- === Audio Controls ===
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("dms ipc call audio increment 3"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("dms ipc call audio decrement 3"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("dms ipc call audio mute"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("dms ipc call audio micmute"), { locked = true })

-- === Brightness Controls ===
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("dms ipc call brightness increment 5"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("dms ipc call brightness decrement 5"), { locked = true, repeating = true })

-- === Window Management ===
hl.bind(mod .. " + Q", hl.dsp.window.close())
hl.bind(mod .. " + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))
hl.bind(mod .. " + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind(mod .. " + SHIFT + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mod .. " + W", hl.dsp.group.toggle())

-- === Focus Navigation ===
hl.bind(mod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. " + down", hl.dsp.focus({ direction = "down" }))
hl.bind(mod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mod .. " + H", hl.dsp.group.prev())
hl.bind(mod .. " + L", hl.dsp.group.next())

-- === Window Movement ===
hl.bind(mod .. " + SHIFT + left", hl.dsp.window.move({ direction = "l" }))
hl.bind(mod .. " + SHIFT + down", hl.dsp.window.move({ direction = "d" }))
hl.bind(mod .. " + SHIFT + up", hl.dsp.window.move({ direction = "u" }))
hl.bind(mod .. " + SHIFT + right", hl.dsp.window.move({ direction = "r" }))
hl.bind(mod .. " + SHIFT + H", hl.dsp.window.move({ direction = "l" }))
hl.bind(mod .. " + SHIFT + J", hl.dsp.window.move({ direction = "d" }))
hl.bind(mod .. " + SHIFT + K", hl.dsp.window.move({ direction = "u" }))
hl.bind(mod .. " + SHIFT + L", hl.dsp.window.move({ direction = "r" }))

-- === Column Navigation ===
hl.bind(mod .. " + Home", hl.dsp.focus({ window = "first" }))
hl.bind(mod .. " + End", hl.dsp.focus({ window = "last" }))

-- === Monitor Navigation ===
hl.bind(mod .. " + CTRL + left", hl.dsp.focus({ monitor = "l" }))
hl.bind(mod .. " + CTRL + right", hl.dsp.focus({ monitor = "r" }))
hl.bind(mod .. " + CTRL + H", hl.dsp.focus({ monitor = "l" }))
hl.bind(mod .. " + CTRL + J", hl.dsp.focus({ monitor = "d" }))
hl.bind(mod .. " + CTRL + K", hl.dsp.focus({ monitor = "u" }))
hl.bind(mod .. " + CTRL + L", hl.dsp.focus({ monitor = "r" }))

-- === Move to Monitor ===
hl.bind(mod .. " + SHIFT + CTRL + left", hl.dsp.window.move({ monitor = "l" }))
hl.bind(mod .. " + SHIFT + CTRL + down", hl.dsp.window.move({ monitor = "d" }))
hl.bind(mod .. " + SHIFT + CTRL + up", hl.dsp.window.move({ monitor = "u" }))
hl.bind(mod .. " + SHIFT + CTRL + right", hl.dsp.window.move({ monitor = "r" }))
hl.bind(mod .. " + SHIFT + CTRL + H", hl.dsp.window.move({ monitor = "l" }))
hl.bind(mod .. " + SHIFT + CTRL + J", hl.dsp.window.move({ monitor = "d" }))
hl.bind(mod .. " + SHIFT + CTRL + K", hl.dsp.window.move({ monitor = "u" }))
hl.bind(mod .. " + SHIFT + CTRL + L", hl.dsp.window.move({ monitor = "r" }))

-- === Workspace Navigation ===
hl.bind(mod .. " + Page_Down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mod .. " + Page_Up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mod .. " + U", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mod .. " + I", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mod .. " + CTRL + down", hl.dsp.window.move({ workspace = "e+1" }))
hl.bind(mod .. " + CTRL + up", hl.dsp.window.move({ workspace = "e-1" }))
hl.bind(mod .. " + CTRL + U", hl.dsp.window.move({ workspace = "e+1" }))
hl.bind(mod .. " + CTRL + I", hl.dsp.window.move({ workspace = "e-1" }))

-- === Move Workspaces ===
hl.bind(mod .. " + SHIFT + Page_Down", hl.dsp.window.move({ workspace = "e+1" }))
hl.bind(mod .. " + SHIFT + Page_Up", hl.dsp.window.move({ workspace = "e-1" }))
hl.bind(mod .. " + SHIFT + U", hl.dsp.window.move({ workspace = "e+1" }))
hl.bind(mod .. " + SHIFT + I", hl.dsp.window.move({ workspace = "e-1" }))

-- === Mouse Wheel Navigation ===
hl.bind(mod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mod .. " + CTRL + mouse_down", hl.dsp.window.move({ workspace = "e+1" }))
hl.bind(mod .. " + CTRL + mouse_up", hl.dsp.window.move({ workspace = "e-1" }))

-- === Numbered Workspaces ===
-- Main monitor workspaces (6-10 bound to Mod + 1..5)
for i = 1, 5 do
    local ws = tostring(i + 5)
    hl.bind(mod .. " + " .. i, hl.dsp.focus({ workspace = ws }))
end

-- Secondary monitor workspaces (1-5 bound to Mod + ALT + 1..5)
for i = 1, 5 do
    local ws = tostring(i)
    hl.bind(mod .. " + ALT + " .. i, hl.dsp.focus({ workspace = ws }))
end

-- === Move to Numbered Workspaces ===
--## Move to numbered workspaces for main monitor
hl.bind(mod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 7 }))
hl.bind(mod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 8 }))
hl.bind(mod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 9 }))
hl.bind(mod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 10 }))

--## Move to numbered workspaces for secondary monitor
hl.bind(mod .. " + CTRL + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mod .. " + CTRL + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mod .. " + CTRL + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mod .. " + CTRL + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mod .. " + CTRL + 5", hl.dsp.window.move({ workspace = 5 }))

-- === Column Management ===
hl.bind(mod .. " + bracketleft", hl.dsp.layout("preselect l"))
hl.bind(mod .. " + bracketright", hl.dsp.layout("preselect r"))

-- === Sizing & Layout ===
hl.bind(mod .. " + R", hl.dsp.layout("togglesplit"))

-- === Move/resize windows with mainMod + LMB/RMB and dragging ===
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(), { description = "Move window" })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { description = "Resize window" })

-- === Move/resize windows with mainMod + LMB/RMB and dragging ===
hl.bind(mod .. " + code:20", hl.dsp.window.resize({ x = -100, y = 0, relative = true }), { description = "Expand window left" })
hl.bind(mod .. " + code:21", hl.dsp.window.resize({ x = 100, y = 0, relative = true }), { description = "Shrink window left" })

-- === Manual Sizing ===
hl.bind(mod .. " + minus", function() local w = hl.get_active_window(); if not w then return end; hl.dispatch(hl.dsp.window.resize({ x = math.floor(w.size.x * -10 / 100), y = 0, relative = true })) end, { repeating = true })
hl.bind(mod .. " + equal", function() local w = hl.get_active_window(); if not w then return end; hl.dispatch(hl.dsp.window.resize({ x = math.floor(w.size.x * 10 / 100), y = 0, relative = true })) end, { repeating = true })
hl.bind(mod .. " + SHIFT + minus", function() local w = hl.get_active_window(); if not w then return end; hl.dispatch(hl.dsp.window.resize({ x = 0, y = math.floor(w.size.y * -10 / 100), relative = true })) end, { repeating = true })
hl.bind(mod .. " + SHIFT + equal", function() local w = hl.get_active_window(); if not w then return end; hl.dispatch(hl.dsp.window.resize({ x = 0, y = math.floor(w.size.y * 10 / 100), relative = true })) end, { repeating = true })

-- === Screenshots ===
hl.bind(mod .. " + SHIFT + S", hl.dsp.exec_cmd("grimblast copy area"))
hl.bind(mod .. " + CTRL + S", hl.dsp.exec_cmd("grimblast save screen"))
hl.bind("ALT + XF86Launch1", hl.dsp.exec_cmd("grimblast copy active"))
hl.bind("Print", hl.dsp.exec_cmd("grimblast copy area"))
hl.bind("CTRL + Print", hl.dsp.exec_cmd("grimblast copy screen"))
hl.bind("ALT + Print", hl.dsp.exec_cmd("grimblast copy active"))

-- === System Controls ===
-- bind = $mod SHIFT, P, dpms, off # Turn off display power management
hl.bind(mod .. " + SHIFT + W", hl.dsp.exec_cmd("next_shuffled_wallpaper"))
hl.bind(mod .. " + CTRL + W", hl.dsp.exec_cmd("next_shuffled_wallpaper prev"))

-- === Media Controls ===
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("dms ipc call mpris playPause"), { locked = true, repeating = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("dms ipc call mpris next"), { locked = true, repeating = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("dms ipc call mpris previous"), { locked = true, repeating = true })
hl.bind("XF86AudioStop", hl.dsp.exec_cmd("dms ipc call mpris stop"), { locked = true, repeating = true })
hl.bind("XF86AudioRewind", hl.dsp.exec_cmd("dms ipc call mpris position 10-"), { locked = true, repeating = true })
hl.bind("XF86AudioForward", hl.dsp.exec_cmd("dms ipc call mpris position 10+"), { locked = true, repeating = true })
hl.bind(mod .. " + F5", hl.dsp.exec_cmd("rmpc prev"), { locked = true, repeating = true })
hl.bind(mod .. " + F6", hl.dsp.exec_cmd("rmpc next"), { locked = true, repeating = true })
hl.bind(mod .. " + F7", hl.dsp.exec_cmd("rmpc togglepause"), { locked = true, repeating = true })
hl.bind(mod .. " + F8", hl.dsp.exec_cmd("rmpc togglerandom"), { locked = true, repeating = true })
hl.bind(mod .. " + SHIFT + F9", hl.dsp.exec_cmd("rmpcDeleteCurrentSong true"), { locked = true, repeating = true })
