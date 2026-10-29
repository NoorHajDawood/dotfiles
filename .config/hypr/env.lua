-- ==================
-- ENVIRONMENT VARS
-- ==================

-- hyprlang2lua polyfills — runtime helpers reproducing
-- hyprlang behaviour the typed Lua API doesn't expose directly.

local function hl_source_glob(pattern)
    -- 'source = path/*.conf' had hyprlang glob and inline-expand the
    -- matches. require() can't glob, so we shell out to ls (matching
    -- the user's brace-expansion behaviour) and dofile each result.
    -- Paths with spaces or shell metacharacters in the directory
    -- portion will misparse; typical ~/.config/hypr/ layouts don't
    -- hit this. Swap to lfs.dir() or find -name if you need fancier.
    local p = io.popen("ls " .. pattern .. " 2>/dev/null")
    if not p then return end
    for f in p:lines() do
        local chunk, err = loadfile(f)
        if chunk then chunk()
        else io.stderr:write("hl_source_glob: " .. tostring(err) .. "\n") end
    end
    p:close()
end

hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("QT_QPA_PLATFORMTHEME", "gtk3")
hl.env("QT_QPA_PLATFORMTHEME_QT6", "gtk3")
hl.env("TERMINAL", "kitty")
hl.env("BROWSER", "firefox")
hl.env("FILE_MANAGER", "kitty -e yazi")
hl.env("EDITOR", "nvim")

-- Custom variables
local home = os.getenv("HOME") or "/home/noor"
local current_path = os.getenv("PATH") or "/usr/local/sbin:/usr/local/bin:/usr/bin"

hl.env("PATH", home .. "/.local/bin:" .. current_path)
hl.env("MUSIC_DIRECTORY", "/mnt/hdd/Media/Music")
hl.env("WALLPAPER_DIRECTORY", home .. "/Pictures/Wallpapers")

-- Hyprcursor variables
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("HYPRCURSOR_SIZE", "20")

-- Machine GPU overlay (written by ArchX — not tracked in git)
-- Uses glob so a missing dir/file does not hard-fail before first bootstrap.
-- Source: ./env.d/*.conf (glob; resolved at runtime). Each matched .conf must be converted to .lua.
hl_source_glob("./env.d/*.lua")
