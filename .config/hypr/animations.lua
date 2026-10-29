-- ==================
-- ANIMATIONS
-- ==================

-- Explanation of parameters:
-- animation = <type>, <duration in ms>, <easing type>, <easing amount>
-- Easing types: linear, easeIn, easeOut, easeInOut, default
-- Easing amount: 1-10 (1 is very subtle, 10 is very pronounced)
-- Types: windowsIn, windowsOut, workspaces, windowsMove, fade, border

hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 3,
    bezier = "default",
})
hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 3,
    bezier = "default",
})
hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 5,
    bezier = "default",
})
hl.animation({
    leaf = "windowsMove",
    enabled = true,
    speed = 4,
    bezier = "default",
})
hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 3,
    bezier = "default",
})
hl.animation({
    leaf = "border",
    enabled = true,
    speed = 3,
    bezier = "default",
})
hl.config({
    animations = {
        enabled = false,
    },
})

