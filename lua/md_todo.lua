--- Simple plugin to manage tasks as todos in markdown files
local md_todo = {}

---Gets the content of the line where the cursor is at
---@return string
local function get_current_line()
  local buffer_number = vim.api.nvim_get_current_buf()
  local row, _ = unpack(vim.api.nvim_win_get_cursor(0))
  return vim.api.nvim_buf_get_lines(buffer_number, row-1, row, false)[1]
end

local function disable_in_non_md_files()
  extension = vim.api.nvimgebuffer
end

local function line_is_valid()
  
end

function md_todo.create_todo()
end

function md_todo.set_todo_done()
  local current_line = get_current_line()
  print(current_line)
end

function md_todo.set_todo_due()
end

return md_todo
