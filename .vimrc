execute pathogen#infect()

let mapleader = " "

syntax on 
filetype plugin indent on
set number  

let g:go_disable_autoinstall = 0  
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

map <C-n> :NERDTreeToggle<CR>

"tabs settings

set shiftwidth=2
set expandtab
set autoindent
set showmatch
set hlsearch
set smartindent

set number
set numberwidth=5
set incsearch
set ignorecase
set ttyfast
set lazyredraw

nmap <leader>r <Plug>(go-run)
nmap <leader>b <Plug>(go-build)
nmap <leader>t <Plug>(go-test)
nmap <leader>c <Plug>(go-coverage)

"open current folder with nerdtree sidebar without using the dot(.)
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set guifont=Monaco\ 12
let g:airline_powerline_fonts = 1
let g:airline_theme='laederon'

syntax enable
set background=dark
colorscheme solarized

