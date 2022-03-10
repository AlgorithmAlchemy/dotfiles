set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set mouse=a
syntax on

call plug#begin('~/local/share/nvim/plugged')
" Plug [GitHub repo URL] lists plugins and :PlugInstall installs plugins
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/rakr/vim-one'
Plug 'hzchirs/vim-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Theme
let g:material_style='dark'
set background=dark
colorscheme vim-material
let g:airline_theme='one'

" Keybinds for NERDTree 
nmap <C-f> :NERDTreeToggle <CR> 
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Open NERDTree automatically
autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

