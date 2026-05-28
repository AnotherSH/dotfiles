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
"map R :source ~/.vimrc<CR>
map <LEADER>rc :e ~/.vimrc<CR>
map te :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>
map tmh :-tabmove<CR>
map tml :+tabmove<CR>
map sh :vsplit<CR>
map sl :vsplit<CR>
map sj :split<CR>
map sk :split<CR>
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

" vs
noremap <C-l> :vsc Edit.FormatDocument<CR>
vnoremap <C-l> :vsc Edit.FormatSelection<CR>
" back
nnoremap gb :vsc View.NavigateBackward<CR>
" forward
nnoremap gf :vsc View.NavigateForward<CR>
nnoremap gd :vsc Edit.GoToDefinition<CR>
nmap <LEADER>i :vsc VAssistX.GotoImplementation<CR>
nmap <LEADER>f :vsc Edit.FindinFiles<CR>
vmap <LEADER>f :vsc Edit.FindinFiles<CR>
nmap <LEADER>r :vsc Edit.Replace<CR>
vmap <LEADER>r :vsc Edit.Replace<CR>
nmap <LEADER>R :vsc Edit.ReplaceinFiles<CR>
vmap <LEADER>R :vsc Edit.ReplaceinFiles<CR>
