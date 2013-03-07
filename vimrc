
"""""""""""""""""""""""""""""""""""""""""""""
" Environment + Visual Settings
"
"""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set ruler
set number

" Set the highlighting on the Pmenu
highlight PMenu 		term=reverse cterm=bold ctermfg=white ctermbg=black
highlight PMenuSel 		term=reverse cterm=bold ctermfg=red ctermbg=black
"""""""""""""""""""""""""""""""""""""""""
" Basic Navigation and Text Manipulation
"
"""""""""""""""""""""""""""""""""""""""""

" Set the scroll offset to be 10 lines
set scrolloff=10
set backspace+=indent,eol,start
" Map CTRL-L to go to the last line on the screen
map! <C-L> <ESC>Li

" Map CTRL-E to go to end of line
map! <C-e> <ESC>$a

" Map CTRL-A to go the start of line
map! <C-a> <ESC>^i

" Map CTRL-S to Write command
map! <C-s> <ESC>:wq

" Map CTRL-K to delete after the cursor
map! <C-k> <ESC>lDi

" Map CTRL-P to the go to toggle pastemode
" psych

" Map CTRL-] to tab right
map! <C-]> <ESC>>>i

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Map the key bindings k then j to be equal to escape i.e goto normal mode  
"ino kj <esc>l


""""""""""""""""""""""""
" Global Indentation Rules 
"
""""""""""""""""""""""""
set cindent
set autoindent
set tabstop=4
set shiftwidth=4
set cinkeys=0{,0},:,0#,!^F


""""""""""""""""""""""""
" FileType Management
""""""""""""""""""""""""
:filetype on
autocmd BufNewFile,BufRead  *.md   source ~/.vim/markdown.vim
autocmd BufNewFile,BufRead  *.md,*.html,*.xml  source ~/.vim/closetag.vim
autocmd BufNewFile,BufRead  *.py  source ~/.vim/python.vim
autocmd BufNewFile,BufRead  *.rb  source ~/.vim/ruby.vim
autocmd BufNewFile,BufRead  *.haml  source ~/.vim/haml.vim
autocmd BufNewFile,BufRead  *.sass set expandtab
source ~/.vim/supertab.vim
filetype plugin on


"""""""""""""""""
" Paste Toggle
"""""""""""""""""
nnoremap <C-p> :set invpaste paste?<CR>
set pastetoggle=<C-p>
set showmode

"""""""""""""""""""""
" Configure Pathogen
"""""""""""""""""""""

call pathogen#infect()
Helptags

""""""""""""""""""""""
" NERD TREE
""""""""""""""""""""""

noremap <C-t> :NERDTreeToggle<CR>
noremap <C-f> :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode="<Tab>"

"""""""""""""""""""""""""""""
"" Rainbow Parenthesis Enable
"""""""""""""""""""""""""""""

au VimEnter * RainbowParenthesesToggleAll

"""""""""""""""""""""""""""
"" Surround plugings
""""""""""""""""""""""""""

noremap q' ysiw'

"nnoremap q\" ysiw\"
"nnoremap q] ysiw]
"nnoremap q) ysiw)

"""""""""""""""""""""""
"" Syntastic Config
"""""""""""""""""""""""

let g:syntastic_mode_map = { 'mode' : 'passive' , 'active_filetypes' : [] , 'passive_filetypes': [] }
noremap <C-e> :SyntasticToggleMode<CR> 

""""""""""""""""""""""
" Solarized 
"""""""""""""""""""""
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

"""""""""""""""""""""""
" Tagbars
""""""""""""""""""""""
imap <F8> <ESC>:TagbarToggle<CR>
nmap <F8> :TagbarToggle<CR>

""""""""""""""""""""""""
" Powerline
"""""""""""""""""""""""""
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
"let g:Powerline_symbols = 'fancy'"

""""""""""""""""""""""""""
" Git Gutter
""""""""""""""""""""""""""
highlight clear SignColumn
