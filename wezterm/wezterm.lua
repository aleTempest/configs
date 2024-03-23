-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- config.color_scheme = "OneDark (base16)"
config.color_scheme = "Oxocarbon Dark (Gogh)"
config.font = wezterm.font("Iosevka Nerd Font")
-- config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 14.0
config.enable_tab_bar = false

return config
