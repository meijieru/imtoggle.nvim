local M = {
  _keyboard = nil,
  _switched = nil,
  _enabled = true,
}

local platform = require "imtoggle.platform"

function M._init()
  if M._keyboard == nil then
    M._keyboard = platform.get_keyboard()
  end
  if M._switched == nil then
    M._switched = false
  end
end

function M.enable()
  M._enabled = true
end

function M.disable()
  M._enabled = false
end

function M.switch()
  if not M._enabled then
    return
  end
  platform.switch()
  M._switched = not M._switched
end

function M.imtoggle2en()
  M._init()
  local result = platform.get_current_im()
  local dst_im = M._keyboard.keyboards[M._keyboard.im]
  if result ~= dst_im then
    M.switch()
  end
end

function M.imtoggle2zh()
  M._init()
  if M._switched then
    M.switch()
  end
end

return M
