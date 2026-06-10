-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
map("n", "Q", ":q<CR>", { desc = "Quit File" })
map("n", "<leader>rc", ":e ~/AppData/Local/nvim/<CR>", { desc = "Open vimrc directory" })

-- 复制当前文件所在目录的路径
map("n", "<leader>yd", function()
  if vim.bo.filetype == "oil" then
    local oil = require("oil")
    local dir = oil.get_current_dir()
    if dir then
      vim.fn.setreg("+", dir)
      print("Copied oil directory: " .. dir)
    else
      print("Not in an oil buffer")
    end
  else
    vim.fn.setreg("+", vim.fn.expand("%:p:h"))
    print("Copied: " .. vim.fn.expand("%:p:h"))
  end
end, { desc = "Copy directory path of current file" })

-- 复制当前文件的绝对路径
map("n", "<leader>yp", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
  print("Copied: " .. vim.fn.expand("%:p"))
end, { desc = "Copy absolute path of current file" })

-- 复制当前文件名（含扩展名）
map("n", "<leader>yn", function()
  vim.fn.setreg("+", vim.fn.expand("%:t"))
  print("Copied: " .. vim.fn.expand("%:t"))
end, { desc = "Copy file name with extension" })
