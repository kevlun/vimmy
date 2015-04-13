" VIMMY
" -----------------------------------------------------------------------------
" Description: Simple and Easy VIM Setup
" Author: Kevin Lund <kevin@macmail.se>

" From 'VIMRC you’re doing it wrong! <http://bamgreeneggsandham.com/2013/11/19/vimrc-your-doing-it-wrong/>'
let s:vim_home = '~/.vim'

let config_list = [
    \ 'base.vim',
    \ 'plugins.vim',
    \ 'functions.vim',
    \ 'theme.vim',
    \ 'settings.vim',
    \ 'leader.vim',
    \ 'keymap.vim',
    \ 'plugin_settings/*.vim'
    \]

for files in config_list
    for f in split(glob(s:vim_home.files), '\n')
        exec 'source '.f
    endfor
endfor
