# md_todo
Neovim lua plugin to manage todos in your markdown files

This plugin exposes 2 main functions:

## create_todo
This will add a new github style markdown task on a new line and leave your cursor in insert mode
at the end of the line so you can type the title of the task

Example usage
```lua
local md_td = require('md_todo')

vim.keymap.set("n", "<leader>md",function ()
  md_td.toggle_state()
end)
```

## toggle_state
This will toggle the state of a task.

Example usage
```lua
local md_td = require('md_todo')

vim.keymap.set("n", "<leader>mn",function ()
  md_td.create_todo()
end)
```

## Contributions
They are welcome, just open a pull request :)

## Roadmap
- [] Select multiple tasks and toggle state

## Demo
[![Alt text](https://img.youtube.com/vi/VIDEO_ID/0.jpg)](https://youtu.be/FKfZ115CmFU)
