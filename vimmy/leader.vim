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

" Fugitice
nnoremap <silent> <leader>gs :<C-u>Gstatus<CR>
nnoremap <silent> <leader>gw :<C-u>Gwrite<CR>
nnoremap <silent> <leader>gc :<C-u>Gcommit<CR>
nnoremap <silent> <leader>gb :<C-u>Gblame<CR>
nnoremap <silent> <leader>gd :<C-u>Gdiff<CR>
nnoremap <silent> <leader>gj :<C-u>Gpull<CR>
nnoremap <silent> <leader>gk :<C-u>Gpush<CR>
nnoremap <silent> <leader>gf :<C-u>Gfetch<CR>
