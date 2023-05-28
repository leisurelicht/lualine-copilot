local M = require("lualine.component"):extend()
local copilot_client = require("copilot.client")
local copilot_command = require("copilot.command")

---@class CopilotComponentOptions
local default_options = {
  symbols = {
    enabled = " ",
    disabled = " ",
    warn = " ",
    running = " ",
  },
}

local function check_status()
  local client = copilot_client.get()
  if not client then
    return 1
  end

  return 0
end

local function toggle()
  local status = check_status()
  if status == 0 then
    copilot_command.disable()
  elseif status == 1 then
    copilot_command.enable()
  end
end

-- ---Initialize component
-- ---@param options table: Component options
function M:init(options)
  options.on_click = toggle

  M.super.init(self, options)

  self.options = vim.tbl_deep_extend("force", default_options, options or {})

  -- setup options
  self.symbols = self.options.symbols
end

function M:update_status()
  local status = check_status()
  if status == 0 then
    return self.symbols.enabled
  elseif status == 1 then
    return self.symbols.disabled
  end
end

return M

