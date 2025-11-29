local wezterm = require("wezterm")
local config = wezterm.config_builder()

require("config.appearance")(wezterm, config)

return config
