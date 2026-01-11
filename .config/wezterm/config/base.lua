return function(wezterm, config)
    -- theme
    config.color_scheme = "Tokyo Night"

    -- window
    config.window_background_opacity = 0.8
    config.window_decorations = 'NONE'
    config.window_padding = {
        -- The gap between the tab bar and the window edge
        top = 0,
        bottom = 0,
    }

    -- Pane
    config.inactive_pane_hsb = {
        saturation = 0.9,
        brightness = 0.8,
    }
    -- font
    config.font = wezterm.font_with_fallback { '0xProto Nerd Font', 'WenQuanYi Zen Hei' }
    config.font_size = 15

    -- cursor
    config.default_cursor_style = 'BlinkingBar'
    config.animation_fps = 120

    -- Render front-end
    config.front_end = "OpenGL"
end
