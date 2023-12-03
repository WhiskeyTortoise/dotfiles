if !(&t_Co == 256 || has('gui_running'))
finish
endif 

" Init
hi clear
if exists("syntax_on")
syntax reset
endif

let colors_name="hackertime"
set background=dark
 
" General Colors
hi Normal ctermfg=15
hi Comment ctermfg=76
hi Constant ctermfg=123
hi Identifier ctermfg=159
hi Statement ctermfg=51
hi PreProc ctermfg=46
hi Type ctermfg=red
hi Special ctermfg=yellow

hi LineNr ctermfg=247
