" THEME SETTINGS
" -------------------------------------------------------------------------------------------------
set background=light
colorscheme lucid

if has("gui_running")
    " Use set guifont=* to set and view with set guifont?
    set guifont=Hack:h12
    " set guifont=Monaco:h12

    " Hide scrollbars
    set guioptions-=r
    set guioptions-=L

    " Hide GUI tabs
    set guioptions-=e

    " Hide toolbar
    set guioptions-=T

    " Transparency
    "set transparency=5

    " Vertical linespacing
    set linespace=10

    " GUI Specific theme
    "----------------------------
    " set background=light
else
    set t_Co=256
    set term=xterm-256color
    set termencoding=utf-8
    set ttyfast
endif
