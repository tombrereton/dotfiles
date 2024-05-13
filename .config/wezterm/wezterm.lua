local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action

config.color_scheme = "catppuccin-frappe"
config.font_size = 15
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"
config.keys = {
	{ key = "LeftArrow",  mods = "OPT", action = wezterm.action({ SendString = "\x1bb" }) },
	{ key = "RightArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bf" }) },
	{ key = "=",          mods = "CMD", action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
	{ key = "+",          mods = "CMD", action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },
	{ key = 'w',          mods = 'CMD', action = wezterm.action.CloseCurrentPane { confirm = true }, },
	{ key = '\\',         mods = 'OPT', action = act.PaneSelect },
	{
		key = 'h',
		mods = 'OPT',
		action = act.ActivatePaneDirection 'Left',
	},
	{
		key = 'l',
		mods = 'OPT',
		action = act.ActivatePaneDirection 'Right',
	},
	{
		key = 'k',
		mods = 'OPT',
		action = act.ActivatePaneDirection 'Up',
	},
	{
		key = 'j',
		mods = 'OPT',
		action = act.ActivatePaneDirection 'Down',
	},
}

return config
