" LEADER
" -------------------------------------------------------------------------------------------------
" map leader to ,
let mapleader = ","

",w to save
nmap <leader>w :w!<cr>

",t to create a new tab
nmap <leader>t :tabnew<cr>

" ,. to select next/previous buffer
nmap <leader>- :bn<cr>
nmap <leader>. :bp<cr>

" Search with Ack
nmap <leader>a <Esc>:Ack!

" Strip whitespace
nnoremap <leader>l :Strip<cr>

" CTRL-P
nnoremap <Leader>o :execute 'CtrlP ' . getcwd()<cr>
nnoremap <Leader>r :CtrlPMRU<cr>
nnoremap <Leader>b :CtrlPBuffer<cr>

