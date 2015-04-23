" Theme settings
set background=dark
colorscheme hybrid

if has("gui_running")
    "set guifont=Ubuntu\ Mono\ derivative\ Powerline:h16
    set guifont=Input\ Mono\ Narrow:h14

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
    set background=light
    colorscheme hemisu
    let g:airline_theme='hemisu_airline'

    " Custom settings for pencil theme

    hi SpellBad ctermfg=160 ctermbg=254 guifg=#d70000 guibg=#E5E6E6
    hi SpellCap ctermfg=214 ctermbg=254 guifg=#ffaf00 guibg=#E5E6E6


else
    set t_Co=256
    set term=xterm-256color
    set termencoding=utf-8
endif
