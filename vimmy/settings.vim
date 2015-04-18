" MISC SETTINGS
" -------------------------------------------------------------------------------------------------

" Change cursor shape between insert and normal mode in iTerm2.app
" -------------------------------------------------------------------------------------------------
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
" -------------------------------------------------------------------------------------------------

" Highlight whitespace
" -------------------------------------------------------------------------------------------------
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Trim Whitespace on save
"autocmd FileType php,ruby,python,coffee,js,java,css
autocmd BufWritePre * :call StripWhitespace()
" -------------------------------------------------------------------------------------------------

" Remember last location in file
" -------------------------------------------------------------------------------------------------
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif
" -------------------------------------------------------------------------------------------------

" FileType Specific settings
" -------------------------------------------------------------------------------------------------
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 tabstop=2 expandtab
au BufNewFile,BufReadPost *.yaml setl shiftwidth=2 tabstop=2 expandtab
au BufNewFile,BufReadPost *.yml setl shiftwidth=2 tabstop=2 expandtab
" -------------------------------------------------------------------------------------------------

" Folding
" -------------------------------------------------------------------------------------------------
augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END

" AutoClose
" -------------------------------------------------------------------------------------------------
autocmd CompleteDone * pclose
" -------------------------------------------------------------------------------------------------
