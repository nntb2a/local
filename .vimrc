set number
set noautoindent
"setlocal list
"setlocal listchars=tab:·\ ,trail:·,eol:↵

imap <F2> <ESC>:w<CR>i
nnoremap <F5> "=strftime("%%Y.%m.%d.%H-%M-%S"))<CR>P
inoremap <F5> <C-R>=strftime("%Y.%m.%d.%H-%M-%S")<CR>
noremap <silent> <F11> :cal VimCommanderToggle()<CR> 

"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorLineNr   term=bold ctermfg=white gui=bold guifg=Yellow
set cursorline

"201310031216
nnoremap tn  :tabnext<CR>
nnoremap tp  :tabprev<CR>
nnoremap te  :tabedit<Space>
nnoremap tq  :tabclose<CR>

"autocmd VimEnter * tab all
"autocmd BufAdd * exe 'tablast | tabe "' . expand( "<afile") .'"'

set browsedir=buffer
