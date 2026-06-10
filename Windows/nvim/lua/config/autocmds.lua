-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- 启用主题，一定要在加载lazy.nvim之后调用 --
-- gruber-darker 主题
-- vim.cmd.colorscheme("gruber-darker")

-- oil --
require("oil").setup({
  keymaps = {
    ["<C-s>"] = false, -- 取消 垂直分割打开文件快捷键
    ["<C-h>"] = false, -- 取消 水平分割打开文件快捷键
    ["<C-t>"] = false, -- 取消 新开标签页打开文件快捷键
  },
})
-- oil --
