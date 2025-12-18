return function(wezterm, config)
  local function get_max_cols(window)
    local tab = window:active_tab()
    local cols = tab:get_size().cols
    return cols
  end

  -- Let the tab width fill the entire window width
  wezterm.on("window-config-reloaded", function(window)
    wezterm.GLOBAL.cols = get_max_cols(window)
  end)

  wezterm.on("window-resized", function(window, pane)
    wezterm.GLOBAL.cols = get_max_cols(window)
  end)

  wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
    local title = tab.active_pane.title
    local full_title = tab.tab_index + 1 .. ": " .. title
    local pad_length = (wezterm.GLOBAL.cols // #tabs - #full_title) // 2
    if pad_length * 2 + #full_title > max_width then
      pad_length = (max_width - #full_title) // 2
    end
    return string.rep(" ", pad_length) .. full_title .. string.rep(" ", pad_length)
  end)
end
