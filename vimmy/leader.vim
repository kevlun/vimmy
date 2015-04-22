" LEADER
" -------------------------------------------------------------------------------------------------
" map leader to ,
let mapleader = ","

",w to save
nmap <leader>w :w!<cr>

",t to create a new tab
nmap <leader>t :tabnew<cr>

" ,. to select next/previous buffer
"nmap <leader>- :bn<cr>
"nmap <leader>. :bp<cr>

" Search with Ack
nmap <leader>a <Esc>:Ack!

" Strip whitespace
nnoremap <leader>l :Strip<cr>

" CTRL-P
nnoremap <Leader>o :execute 'CtrlP ' . getcwd()<cr>
nnoremap <Leader>- :CtrlPMRU<cr>
nnoremap <Leader>. :CtrlPBuffer<cr>
nnoremap <leader>* :CtrlPtjump<cr>
vnoremap <leader>* :CtrlPtjumpVisual<cr>

" Fugitive
nnoremap <silent> <leader>gs :<C-u>Gstatus<CR>
nnoremap <silent> <leader>gw :<C-u>Gwrite<CR>
nnoremap <silent> <leader>gc :<C-u>Gcommit<CR>
nnoremap <silent> <leader>gb :<C-u>Gblame<CR>
nnoremap <silent> <leader>gd :<C-u>Gdiff<CR>
nnoremap <silent> <leader>gj :<C-u>Gpull<CR>
nnoremap <silent> <leader>gk :<C-u>Gpush<CR>
nnoremap <silent> <leader>gf :<C-u>Gfetch<CR>

" Unite
"nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
"nnoremap <leader>ot :Unite file_rec/async -default-action=tabopen -buffer=files -start-insert<cr>
"nnoremap <leader>os :Unite file_rec/async -default-action=split -buffer=files -start-instert<cr>
"nnoremap <leader>ov :Unite file_rec/async -default-action=vsplit -buffer=files -start-instert<cr>

"nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
"nnoremap <leader>- :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
"nnoremap <leader>. :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>

"nnoremap <silent><leader>f :Unite -silent -start-insert file_rec/async:!:/home/jayflo/<CR>
"nnoremap <silent><leader>s :Unite -silent -quick-match buffer<CR>
"nnoremap <silent><Leader>y :Unite -silent history/yank<CR>
