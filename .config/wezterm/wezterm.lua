local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "catppuccin-frappe"
config.font_size = 15
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"

-- inactive config
--config.font = wezterm.font_with_fallback({
--{ family = "Iosevka Term", weight = "Medium" },
--})

return config
