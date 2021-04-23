set nocompatible
syntax on
set number
set showcmd
set showmode
set hidden
set wildmenu
set wildmode=list:longest
set incsearch
set hlsearch
set mouse=a
set tabstop=4
set backspace=indent,eol,start
set clipboard=unnamedplus
set clipboard=unnamed
set completeopt+=popup

let &t_ti.="\<Esc>[1 q"
let &t_SI.="\<Esc>[5 q"
let &t_EI.="\<Esc>[1 q"
let &t_te.="\<Esc>[0 q"

filetype plugin on

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'jez/vim-superman'
Plug 'vim-airline/vim-airline'
" Plug 'valloric/youcompleteme'
call plug#end()

colorscheme gruvbox
set background=dark

let g:airline#extensions#tabline#enabled = 1
