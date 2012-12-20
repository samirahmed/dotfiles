:setlocal spell spelllang=en_us

map <localleader>\ <ESC>i![  ]( img/.png )
" <ESC>:!scrot -s -q 70 img/

hi SpellBad term=bold cterm=bold ctermfg=red  ctermbg=none
hi SpellCap  term=bold cterm=bold ctermfg=red ctermbg=none
hi SpellRare  term=bold cterm=bold ctermfg=red ctermbg=none
hi SpellLocal  term=bold cterm=bold ctermfg=red ctermbg=none
