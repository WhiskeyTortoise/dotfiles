scriptencoding utf-8

" Automatically detect filetypes
filetype plugin indent on

" set syntax highlighting options
syntax on

" set tabs
set tabstop=4 shiftwidth=2 expandtab

" Color Scheme
colorscheme mytheme 


" Pugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'ThePrimeagen/vim-be-good'

call plug#end()



"hi Normal ctermfg=250 ctermbg=234 gui=None guifg=#bcbcbc guibg=#1c1c1c

" Test
let t:is_transparent = 0
function! Toggle_transparent()
    if t:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE 
        let t:is_transparent = 1
    else
        colorscheme mytheme
        let t:is_transparent = 0
    endif
endfunction
nnoremap <C-t> : call Toggle_transparent()<CR>


" Edit Colorscheme
function! EditColorScheme()
  execute "e " . "/home/adam/.config/nvim/colors/mytheme.vim"
endfunction
