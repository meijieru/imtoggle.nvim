local M = {}

local core = require "imtoggle.core"

function M.setup(config)
  config = config or { enable = true }
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

return M
