" Theme settings
set background=dark
colorscheme hybrid

if has("gui_running")
    " Set Font
    set guifont=Ubuntu\ Mono\ derivative\ Powerline:h16

    " Hide scrollbars
    set guioptions-=r
    set guioptions-=L

    " Hide GUI tabs
    set guioptions-=e

    " Hide toolbar
    set guioptions-=T

    " Transparency
    set transparency=5
else
    set t_Co=256
    set term=xterm-256color
    set termencoding=utf-8
endif
