---@class Config: Wezterm
local wezterm = require 'wezterm'

local M = {}

---@param config Config
---@param opts? Opts
function M.apply_to_config(config, opts)
  opts = opts or {}
  config = config

  wezterm.log_info 'bartender plugin loaded'
end

wezterm.on("update-right-status", function(window, pane)
    window:set_right_status(wezterm.format({
      {Attribute={Underline="Double"}},
      {Attribute={Intensity="Bold"}},
      {Text="Bartender Status"}
    }));
end);

return M
