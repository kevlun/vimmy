" GENERAL SETTINGS
" -------------------------------------------------------------------------------------------------
" Set syntax highlighting on
syntax on

" Enable mouse support
set mouse=a
set relativenumber
set number
set backup

" Create backup and tmp directories
" Delete old temp files on start
silent execute '!mkdir -p ~/.vim/temp'
silent execute '!rm -f ~/.vim/temp/*~'
set backupdir=~/.vim/temp
set directory=~/.vim/temp

" Fix Backspace
set backspace=indent,eol,start
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set laststatus=2
set showmatch
set ruler
set hlsearch
set incsearch
set noerrorbells
set visualbell
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab
set cursorline
set foldlevel=99
set antialias
set linespace=6

" Set Invisble characters
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
