set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'moll/vim-node'
Plugin 'wookiehangover/jshint.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'kieo/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'ternjs/tern_for_vim'
Plugin 'majutsushi/tagbar'
Plugin 'dleonard0/pony-vim-syntax'
Plugin 'keith/swift.vim'
Plugin 'rust-lang/rust.vim'
call vundle#end()            " required

" Add merlin for Ocaml developemn
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

"Use Os clipoard by default (on Versions compiled with `+clopboard`)
set clipboard=unnamed

filetype plugin indent on    " required

let mapleader=" "
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'
" Show airline status even on a single file
set laststatus=2

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

set textwidth=80
set colorcolumn=+1

" split windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>"

set splitbelow
set splitright

"nerd tree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

""open current folder with nerdtree sidebar without using the dot(.)
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

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
au FileType go nmap <leader>l <Plug>(go-metalinter)
au FileType go nmap <leader>t  <Plug>(go-test)
au FileType go nmap <leader>c  <Plug>(go-coverage)
au FileType go nmap <Leader>d <Plug>(go-doc)
au FileType go nmap <Leader>f :GoImports<CR>

" For solarized plugin (color scheme)
" https://github.com/altercation/vim-colors-solarized
syntax enable
set background=dark
colorscheme solarized

" Make ctrl + p much faster by ignoring git files
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" set cursorline highlight current cursor line
set cursorline

" spell checking
set complete+=kspell
"
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd FileType gitcommit setlocal spell

" RUst
let g:rustfmt_autosave = 1
let g:ycm_rust_src_path="/Users/gernest/rust/src"

" Ocaml ocp-indent
autocmd FileType ocaml source /Users/gernest/.opam/system/share/typerex/ocp-indent/ocp-indent.vim
