local wezterm = require("wezterm")
local config = wezterm.config_builder()

require("config.base")(wezterm, config)
require("config.binds")(wezterm, config)

return config
