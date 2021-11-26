local M = {}

function M._exec_vimfn(command)
  local result = vim.fn.system(command)
  if vim.api.nvim_get_vvar "shell_error" ~= 0 then
    vim.cmd("echom " .. "shell error")
  end
  return result
end

function M._exec_job(command)
  error "not implemented"
end

function M.exec(command, method)
  method = method or "vimfn"
  if method == "vimfn" then
    return M._exec_vimfn(command)
  elseif method == "plenary" then
    return M._exec_job(command)
  end
end

return M
