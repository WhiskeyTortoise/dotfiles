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

" Toggle Transparency
let t:is_transparent = 0
function! Toggle_transparent()
    if t:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE
        let t:is_transparent = 1
    else
        set background=dark
        let t:is_transparent = 0
    endif
endfunction
nnoremap <C-t> : call Toggle_transparent()<CR>
