-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme
config.color_scheme = 'Gruvbox Material (Gogh)'

-- and finally, return the configuration to wezterm


config.font = wezterm.font { family = 'JetBrains Mono' }

config.default_cursor_style = 'BlinkingBar'

config.window_frame = {
    font_size = 8
}

config.colors = {

    tab_bar = {

        active_tab = {
            fg_color = '#000000',
            bg_color = '#D0ED58'
        }
    }
}

config.hide_tab_bar_if_only_one_tab = true


return config
