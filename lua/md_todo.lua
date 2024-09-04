--- Simple plugin to manage tasks as todos in markdown files
local md_todo = {}

DUE_MODE = "due"
DONE_MODE = "done"

---@param str string
---@param prefix string
---@return boolean
local function has_prefix(str, prefix)
  return str:sub(1, #prefix) == prefix
end

---@param line string
---@param mode string
---@return boolean
local function is_valid_line(line, mode)
  if line:sub(1, 1) ~= '-' then
    return false
  end
  if mode == DUE_MODE then
    return has_prefix(line, "- [ ] ")
  end
  if mode == DONE_MODE then
    return has_prefix(line, "- [x] ")
  end
  return true
end

---Gets the content of the line where the cursor is at
---@return string
local function get_current_line()
  local buffer_number = vim.api.nvim_get_current_buf()
  local row, _ = unpack(vim.api.nvim_win_get_cursor(0))
  return vim.api.nvim_buf_get_lines(buffer_number, row - 1, row, false)[1]
end

---@param keys string
---@param mode string
local function feedkeys(keys, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(keys, true, true, true), mode, true)
end

function md_todo.create_todo()
  feedkeys("o", "n")
  feedkeys("- [ ] ", "")
end

function md_todo.toggle_state()
  local current_line = get_current_line()
  if is_valid_line(current_line, DUE_MODE) then
    feedkeys("^/[<CR>ax<Esc>:w<CR>", "n")
    return
  end
  if is_valid_line(current_line, DONE_MODE) then
  feedkeys("^/x<CR>x<Esc>:w<CR>", "n")
    return
  end
end

return md_todo
