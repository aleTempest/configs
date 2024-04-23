-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- config.color_scheme = "OneDark (base16)"
-- config.color_scheme = "Nord (Gogh)"
-- config.color_scheme = "Oxocarbon Dark (Gogh)"
-- config.font = wezterm.font("Iosevka Nerd Font")
-- config.color_scheme = "Solarized (dark) (terminal.sexy)"
-- config.color_scheme = "Gruvbox Dark (Gogh)"
-- config.color_scheme = "Kanagawa (Gogh)"
-- config.color_scheme = "Solarized Dark - Patched"
-- config.color_scheme = "Everforest Dark (Gogh)"
-- config.color_scheme = "Everblush (Gogh)"
config.color_scheme = "Gruvbox Material (Gogh)"
config.font_size = 13.0
config.enable_tab_bar = false

return config
