" VIMMY
" -----------------------------------------------------------------------------
" Description: Simple and Easy VIM Setup
" Url: https://github.com/kevlun/vimmy
" Author: Kevin Lund

" From 'VIMRC you’re doing it wrong! <http://bamgreeneggsandham.com/2013/11/19/vimrc-your-doing-it-wrong/>'
let s:vimmy = '~/.vimmy/'
let config_list = [
    \ 'plugins.vim',
    \ 'init.vim',
    \ 'functions.vim',
    \ 'theme.vim',
    \ 'settings.vim',
    \ 'leader.vim',
    \ 'keymap.vim',
    \ 'plugin_settings/*.vim'
    \]

for files in config_list
    for f in split(glob(s:vimmy.files), '\n')
        exec 'source '.f
    endfor
endfor
