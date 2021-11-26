local M = {}

local exec = require("imtoggle.utils").exec

function M.get_keyboard()
  -- from https://github.com/Neur1n/neuims/blob/master/autoload/neuims.vim
  local win = {
    im = "US Keyboard",
    keyboards = {
      ["US Keyboard"] = 0x0409,
      ["ZH Keyboard"] = 0x0804,
    },
  }

  return win
end

function M.get_current_im()
  return tonumber(exec "im-select.exe")
end

function M.switch()
  exec "im-select.exe locale"
end

return M
