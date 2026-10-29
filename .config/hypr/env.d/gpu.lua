-- ArchX GPU overlay — NVIDIA
-- Written to ~/.config/hypr/env.d/gpu.conf (not tracked in dotfiles)

hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
-- Uncomment if cursor/glitches on some setups:
-- env = GBM_BACKEND,nvidia-drm
-- env = __GLX_VENDOR_LIBRARY_NAME,nvidia
-- env = WLR_NO_HARDWARE_CURSORS,1
