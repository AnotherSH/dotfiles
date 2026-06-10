-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.wrap = true
vim.g.encoding = "utf-8"

-- 设置shell为powershell
if vim.fn.has("win32") == 1 then
  vim.opt.shell = "pwsh" -- 优先使用 PowerShell 7+，如果没有则改成 "powershell.exe"
  vim.opt.shellcmdflag =
    [[-NoLogo -NoProfile -NonInteractive -Command " [Console]::InputEncoding = [Console]::OutputEncoding = [System.Text.Encoding]::UTF8; $PSDefaultParameterValues['Out-File:Encoding'] = 'utf8'; "]]
  vim.opt.shellredir = "2>&1 | Out-File -Encoding UTF8 %s"
  vim.opt.shellpipe = "2>&1 | Tee-Object -FilePath %s"
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
end

-- vim-visual-multi 修改键位，需要放在 lazy 加载之前设置
vim.g.VM_maps = {
  ["Add Cursor Down"] = "<leader>j",
  ["Add Cursor Up"] = "<leader>k",
}
