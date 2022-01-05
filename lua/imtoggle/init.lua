local M = {}

local core = require "imtoggle.core"

local default_setup_opts = { enable = true }

function M.setup(config)
  config = vim.tbl_deep_extend("keep", config or {}, default_setup_opts)
  if config.enable then
    core.enable()
  end

  vim.cmd [[
    augroup imtoggle
      autocmd!
      autocmd InsertLeavePre * lua require("imtoggle.core").imtoggle2en()
      autocmd InsertEnter * lua require("imtoggle.core").imtoggle2zh()
    augroup end
  ]]
end

M.enable = core.enable
M.disable = core.disable
M.get_status = core.get_status

return M
