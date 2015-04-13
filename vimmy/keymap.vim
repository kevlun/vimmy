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

" Search with Ack
nmap <leader>a <Esc>:Ack!

" Pane resize
map <silent> <S-Right> <C-w><
map <silent> <S-Down> <C-W>-
map <silent> <S-Up> <C-W>+
map <silent> <S-Left> <C-w>>

" Switch Panes
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Folding
inoremap <C-z> <C-O>za
nnoremap <C-z> za
onoremap <C-z> <C-C>za
vnoremap <C-z> zf

nnoremap <F1> :set hlsearch!<CR>
map <F2> :set list!<cr>
map <F3> :execute 'NERDTreeToggle ' . getcwd()<cr>
map <F4> :NERDTreeFromBookmark
nnoremap <F5> :TlistToggle<CR>

