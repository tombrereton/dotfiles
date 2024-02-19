local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "catppuccin-frappe"
config.font_size = 15
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"
config.keys = {
	-- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
	{ key = "LeftArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bb" }) },
	-- Make Option-Right equivalent to Alt-f; forward-word
	{ key = "RightArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bf" }) },
}

-- inactive config
--config.font = wezterm.font_with_fallback({
--{ family = "Iosevka Term", weight = "Medium" },
--})

return config
