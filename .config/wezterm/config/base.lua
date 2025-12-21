return function(wezterm, config)
  -- theme
  config.color_scheme = "Tokyo Night"

  -- tab bar
  config.use_fancy_tab_bar = false
  config.hide_tab_bar_if_only_one_tab = true

  -- window
  config.window_background_opacity = 0.8
  config.window_decorations = 'NONE'

  -- font
  config.font = wezterm.font_with_fallback { '0xProto Nerd Font', 'WenQuanYi Zen Hei' }
  config.font_size = 15

  -- cursor
  config.default_cursor_style = 'SteadyBar'
end
