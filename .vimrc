set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'w0rp/ale'
Plug 'ambv/black'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-repeat'

call plug#end()

set encoding=utf-8
set background=dark
colorscheme solarized

set splitbelow
set splitright

" Set leader to space
let mapleader = '<space>'

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Status line
set statusline+=%#warningmsg#
set statusline+=%*

syntax on

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" ale
let g:ale_cache_executable_check_failures = 1

set nowrap
set backspace=indent,eol,start
set autoindent
set nu
set shiftwidth=4
set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab
set clipboard=unnamed
set hlsearch
set incsearch

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells

filetype plugin indent on
autocmd filetype python set expandtab

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.

nnoremap ; :
nmap <silent> ,/ :nohlsearch<CR>

au BufNewFile,BufRead *.py
    \ set tabstop=4      |
    \ set softtabstop=4  |
    \ set shiftwidth=4   |
    \ set textwidth=88   |
    \ set expandtab      |
    \ set autoindent     |
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2     |
    \ set softtabstop=2 |
    \ set shiftwidth=2
