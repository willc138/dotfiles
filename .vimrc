set nocompatible
syntax on
colorscheme gruvbox
set background=dark
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
set omnifunc=syntaxcomplete#Complete
set clipboard=unnamedplus
set clipboard=unnamed

runtime ftplugin/man.vim

execute pathogen#infect()
filetype plugin on

function! Smart_TabComplete()
  let line = getline('.')

  let substr = strpart(line, -1, col('.')+1)


  let substr = matchstr(substr, "[^ \t]*$")
  if (strlen(substr)==0)
    return "\<tab>"
  endif
  let has_period = match(substr, '\.') != -1
  let has_slash = match(substr, '\/') != -1
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"
  elseif ( has_slash )
    return "\<C-X>\<C-F>"
  else
    return "\<C-X>\<C-O>"
  endif
endfunction

inoremap <c-i> <c-r>=Smart_TabComplete()<CR>

