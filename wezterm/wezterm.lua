local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Set font family and size
config.font = wezterm.font '0xProto Nerd Font Mono'
config.font_size = 15.0

return config
