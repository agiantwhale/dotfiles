local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font = wezterm.font 'PragmataPro Mono Liga'
config.font_size = 12.0
config.color_scheme = 'Gruvbox Dark (Gogh)'

return config
