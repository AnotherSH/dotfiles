vim.cmd('syntax on')
vim.g.mapleader = " "
vim.o.number = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.wrap = true
vim.g.encoding = 'utf-8'
-- vim.o.fileencoding = 'utf-8'  -- LazyVim装完插件会报错，也不知道为什么
vim.o.cursorline = true
vim.o.list = true
vim.o.showcmd = true
vim.o.wildmenu = true

-- 临时文件路径
local backup_dir = vim.fn.expand("~/AppData/Local/nvim-data/tmp/backup")
local undo_dir = vim.fn.expand("~/AppData/Local/nvim-data/tmp/undo")
vim.fn.mkdir(backup_dir, "p")
vim.fn.mkdir(undo_dir, "p")
vim.o.backupdir = backup_dir .. ",."
vim.o.directory = backup_dir .. ",."
if vim.fn.has('persistent_undo') == 1 then
    vim.o.undofile = true
    vim.o.undodir = undo_dir .. ',.'
end
-- Auto command example
vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = '*',
    command = "if line(\"'\\\"\") > 1 && line(\"'\\\"\") <= line(\"$\") | exe \"normal! g'\\\"\" | endif"
})

-- vim-visual-multi 修改键位，需要放在 lazy 加载之前设置
vim.g.VM_maps = {
	["Add Cursor Down"] = '<C-j>',
	["Add Cursor Up"]   = '<C-k>'
}
