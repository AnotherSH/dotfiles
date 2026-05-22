local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
-- Normal mode mappings
-- map('n', 'h', 'hzz', default_opts)
-- map('n', 'j', 'jzz', default_opts)
-- map('n', 'k', 'kzz', default_opts)
-- map('n', 'l', 'lzz', default_opts)
-- map('n', 'J', '5jzz', default_opts)
-- map('n', 'K', '5kzz', default_opts)
map('n', 'nl', ':nohlsearch<CR>', default_opts)
-- The <nop> mapping in Vimscript is a no-operation, it disables the key.
-- In Lua for Neovim, we use an empty string to achieve the same effect.
map('n', 's', '<nop>', default_opts)
map('n', 'S', ':w<CR>', default_opts)
map('n', 'Q', ':q<CR>', default_opts)
map('n', '<LEADER>rc', ':e ~/AppData/Local/nvim/init.lua<CR>', default_opts)
map('n', 'te', ':tabedit<CR>', default_opts)
map('n', 'th', ':-tabnext<CR>', default_opts)
map('n', 'tl', ':+tabnext<CR>', default_opts)
map('n', 'tmh', ':-tabmove<CR>', default_opts)
map('n', 'tml', ':+tabmove<CR>', default_opts)
map('n', 'sh', ':set nosplitright<CR>:vsplit<CR>', default_opts)
map('n', 'sl', ':set splitright<CR>:vsplit<CR>', default_opts)
map('n', 'sj', ':set splitbelow<CR>:split<CR>', default_opts)
map('n', 'sk', ':set nosplitbelow<CR>:split<CR>', default_opts)
-- Resize splits using arrow keys
map('n', '<Up>', ':resize +5<CR>', default_opts)
map('n', '<Down>', ':resize -5<CR>', default_opts)
map('n', '<Left>', ':vertical resize -5<CR>', default_opts)
map('n', '<Right>', ':vertical resize +5<CR>', default_opts)
-- Window navigation using leader key
map('n', '<LEADER>h', '<C-w>h', default_opts)
map('n', '<LEADER>j', '<C-w>j', default_opts)
map('n', '<LEADER>k', '<C-w>k', default_opts)
map('n', '<LEADER>l', '<C-w>l', default_opts)
map('n', '<LEADER>H', '<C-w>H', default_opts)
map('n', '<LEADER>J', '<C-w>J', default_opts)
map('n', '<LEADER>K', '<C-w>K', default_opts)
map('n', '<LEADER>L', '<C-w>L', default_opts)
-- Pair window splitting with window movement shortcuts
map('n', 'sv', '<C-w>t<C-w>H', default_opts)
map('n', 'sg', '<C-w>t<C-w>K', default_opts)
-- Read the output of figlet program into the current buffer
-- map('n', 'fi', ':r !figlet ', default_opts)
