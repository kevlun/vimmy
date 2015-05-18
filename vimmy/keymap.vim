" KEYMAPS
" -------------------------------------------------------------------------------------------------
" use jj to return to normal mode
imap jj <Esc>

" Use Shift Tab to unindent
nmap <Tab> a<C-t><Esc>
nmap <S-Tab> a<C-d><Esc>
" nmap <Tab> >>
" nmap <S-Tab> <<
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
map <F3> :IndentLinesToggle<cr>
" map <F4> :execute 'NERDTreeToggle ' . getcwd()<cr>
map <F4> :NERDTreeToggle %:p:h<CR>

inoremap <space> <C-O>za
nnoremap <space> za
onoremap <space> <C-C>za
vnoremap <space> zf

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Move line up/down
nnoremap <D-j> :m .+1<CR>==
nnoremap <D-k> :m .-2<CR>==
inoremap <D-j> <Esc>:m .+1<CR>==gi
inoremap <D-k> <Esc>:m .-2<CR>==gi
vnoremap <D-j> :m '>+1<CR>gv=gv
vnoremap <D-k> :m '<-2<CR>gv=gv

" Some borrowed Emacs bindings

" Use Ctrl-x Ctrl-s for saving
nnoremap <C-x><C-s> :w<CR>
inoremap <C-x><C-s> <ESC>:w<CR>
vnoremap <C-x><C-s> <ESC>:w<CR>

" Open files quickly using Ctrl-Space FuzzyFinder
nnoremap <C-x><C-f> :CtrlSpace O<CR>
inoremap <C-x><C-f> <ESC>:CtrlSpace O<CR>
vnoremap <C-x><C-f> <ESC>:CtrlSpace O<CR>

" Show open buffers
nnoremap <C-x>b :CtrlSpace<CR>
inoremap <C-x>b <ESC>:CtrlSpace<CR>
vnoremap <C-x>b <ESC>:CtrlSpace<CR>



" EasyMotion
"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)
"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)
