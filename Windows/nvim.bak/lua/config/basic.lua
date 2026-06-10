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

-- 设置shell为powershell
if vim.fn.has("win32") == 1 then
    vim.opt.shell = "pwsh" -- 优先使用 PowerShell 7+，如果没有则改成 "powershell.exe"
    vim.opt.shellcmdflag = [[-NoLogo -NoProfile -NonInteractive -Command " [Console]::InputEncoding = [Console]::OutputEncoding = [System.Text.Encoding]::UTF8; $PSDefaultParameterValues['Out-File:Encoding'] = 'utf8'; "]]
    vim.opt.shellredir = "2>&1 | Out-File -Encoding UTF8 %s"
    vim.opt.shellpipe = "2>&1 | Tee-Object -FilePath %s"
    vim.opt.shellquote = ""
    vim.opt.shellxquote = ""
end

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
