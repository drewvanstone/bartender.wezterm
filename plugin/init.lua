---@class Config: Wezterm
local wezterm = require 'wezterm'

local M = {}

---@param config Config
---@param opts? Opts
function M.apply_to_config(config, opts)
  opts = opts or {}
  config = config

  wezterm.log_info 'status plugin loaded'

  wezterm.on("update-right-status", function(window, pane)
      --local success, stdout, stderr = wezterm.run_child_process({"env", "KUBECONFIG="..pane:get_user_vars().KUBECONFIG, "kubectx", "-c"});

      window:set_right_status(wezterm.format({
        {Attribute={Underline="Double"}},
        {Attribute={Intensity="Bold"}},
        {Text="⎈ "}
      }));
  end);
end

return M
