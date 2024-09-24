-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = "Kanagawa (Gogh)"
config.font = wezterm.font("Fira Code", { weight = "Bold" })
config.font_size = 16.0
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- and finally, return the configuration to wezterm
return config
