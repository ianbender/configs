set nocompatible
filetype off

" Set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'wesQ3/vim-windowswap'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
" End Plugins

call vundle#end()
filetype plugin indent on    " required

" Color Schemes
colorscheme molokai_dark
let g:airline#extensions#tabline#enabled=1
set updatetime=250

" Autostart
autocmd VimEnter * NERDTree

" General
set number  " Show line numbers
set linebreak " Break lines at word (requires Wrap lines)
set showbreak=+++ " Wrap-broken line prefix
set textwidth=100 " Line wrap (number of cols)
set showmatch " Highlight matching brace
set visualbell  " Use visual bell (no beeping)
 
set hlsearch  " Highlight all search results
set smartcase " Enable smart-case search
set ignorecase  " Always case-insensitive
set incsearch " Searches for strings incrementally
 
set autoindent  " Auto-indent new lines
set expandtab " Use spaces instead of tabs
set shiftwidth=2  " Number of auto-indent spaces
set smartindent " Enable smart-indent
set smarttab  " Enable smart-tabs
set softtabstop=2 " Number of spaces per Tab
 
" Advanced
set ruler " Show row and column ruler information
 
set undolevels=1000 " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour
 
 
" Generated by VimConfig.com

set mouse=a " activate mouse

syntax on

" enable copy to clipboard

set clipboard=unnamed

" copy to clipboard with Ctrl-C

map <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

" paste from clipboard with Ctrl-V

set pastetoggle=<F10>
inoremap <C-v> <F10><C-r>+<F10>
