execute pathogen#infect()


let mapleader=" "

syntax on 
filetype plugin indent on


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
set tabstop=2
set shiftround

set ruler
set nobackup
set nowritebackup
set noswapfile
set autowrite

"Theme
syntax enable
set background=light
set t_Co=256
let g:solarized_termcolors=256 
colorscheme solarized

set textwidth=80
set colorcolumn=+1

set splitbelow
set splitright

"vim-go
let g:go_disable_autoinstall = 0  
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1


au FileType go nmap <Leader>s <Plug>(go-def-split)
au FileType go nmap <Leader>v <Plug>(go-def-vertical)
au FileType go nmap <Leader>in <Plug>(go-info)
au FileType go nmap <Leader>ii <Plug>(go-implements)

au FileType go nmap <leader>r  <Plug>(go-run)
au FileType go nmap <leader>b  <Plug>(go-build)
au FileType go nmap <leader>g  <Plug>(go-gbbuild)
au FileType go nmap <leader>t  <Plug>(go-test-compile)
au FileType go nmap <leader>c  <Plug>(go-coverage)
au FileType go nmap <Leader>d <Plug>(go-doc)
au FileType go nmap <Leader>f :GoImports<CR>


"nerd tree
map <C-n> :NERDTreeToggle<CR>

"open current folder with nerdtree sidebar without using the dot(.)
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set guifont=Monaco\ 12
let g:airline_powerline_fonts = 1
let g:airline_theme='laederon'


"Spell checking
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd FileType gitcommit setlocal spell
set complete+=kspell
