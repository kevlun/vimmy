" KEYMAPS
" -------------------------------------------------------------------------------------------------
" use jj to return to normal mode
imap jj <Esc>

" Use Shift Tab to unindent
nmap <Tab> a<C-t><Esc>
nmap <S-Tab> a<C-d><Esc>
imap <S-Tab> <C-d>
vmap <Tab> :><CR>gv
vmap <S-Tab> :<<CR>gv

" Pane resize
map <silent> <S-Right> <C-w><
map <silent> <S-Down> <C-W>-
map <silent> <S-Up> <C-W>+
map <silent> <S-Left> <C-w>>

" Switch Panes
"map <C-j> <C-W>j
"map <C-k> <C-W>k
"map <C-h> <C-W>h
"map <C-l> <C-W>l

" Enable . command in visual mode
vnoremap . :normal .<cr>

" switch between current and last buffer
nmap <c-Tab> <c-^>

map <silent> <C-h> :call WinMove('h')<cr>
map <silent> <C-j> :call WinMove('j')<cr>
map <silent> <C-k> :call WinMove('k')<cr>
map <silent> <C-l> :call WinMove('l')<cr>

" NERDTree Settings
nnoremap <F1> :set hlsearch!<CR>
map <F2> :set list!<cr>
map <F3> :execute 'NERDTreeToggle ' . getcwd()<cr>
map <F4> :NERDTree .<cr>
"map <F4> :NERDTreeFromBookmark
nnoremap <F5> :TlistToggle<CR>

inoremap <space> <C-O>za
nnoremap <space> za
onoremap <space> <C-C>za
vnoremap <space> zf

" scroll the viewport faster
nnoremap <C-z> 3<C-e>
nnoremap <C-x> 3<C-y>

" EasyMotion
"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)
"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)

" Show syntax highlighting group for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>

