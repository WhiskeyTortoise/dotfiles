set nocompatible
set wildmenu
set number

set tabstop=4 shiftwidth=2 expandtab

syntax on
colorscheme hackertime 
highlight Normal ctermfg=grey ctermbg=none

" Plugins
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'

call plug#end()
