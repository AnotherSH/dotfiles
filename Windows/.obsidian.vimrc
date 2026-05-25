" __  ____   __  _   _ _____ _____     _____ __  __ ____   ____ 
"|  \/  \ \ / / | \ | | ____/ _ \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |  _|| | | \ \ / / | || |\/| | |_) | |    
"| |  | | | |   | |\  | |__| |_| |\ V /  | || |  | |  _ <| |___ 
"|_|  |_| |_|   |_| \_|_____\___/  \_/  |___|_|  |_|_| \_\\____|
"                                                               
"                                                               
let mapleader=" "
set number
set incsearch
set ignorecase
set smartcase
set wrap
set cursorline
set list
set showcmd

noremap h hzz
noremap j jzz
noremap k kzz
noremap l lzz
noremap J 5jzz
noremap K 5kzz
map nl :nohl<CR>
map s <nop>
map S :w<CR>
map Q :q<CR>
"map R :source ~/_vimrc<CR>
map <LEADER>rc :e ~/_vimrc<CR>
map te :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>
map tmh :-tabmove<CR>
map tml :+tabmove<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>
map <up> :res+5<CR>
map <down> :res-5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l
map <LEADER>H <C-w>H
map <LEADER>J <C-w>J
map <LEADER>K <C-w>K
map <LEADER>L <C-w>L
map sv <C-w>t<C-w>H
map sg <C-w>t<C-w>K