-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- config.color_scheme = "Solarized Dark - Patched"
config.color_scheme = "Solarized Light (Gogh)"

config.font_size = 13.0
config.enable_tab_bar = false

return config
