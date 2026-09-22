-- Shared helper: read the global light/dark state written by the `theme` command.
local M = {}

M.state_file = vim.fn.expand("~/.config/theme/current")

---@return "light"|"dark"
function M.mode()
  local f = io.open(M.state_file, "r")
  if not f then
    return "dark"
  end
  local value = f:read("l")
  f:close()
  return value == "light" and "light" or "dark"
end

return M
