" GENERAL SETTINGS
" -------------------------------------------------------------------------------------------------
" Set syntax highlighting on
syntax on

set mouse=a                         " Enable mouse
set relativenumber
set number
set shell=/bin/bash\ -li

" Disable Backup
" -------------------------------------
set nobackup
set noswapfile
set nowritebackup

" Enable Backup
" -------------------------------------
"set backup
" Creat backup and tmp directories
" Delete old temp files on start
"silent execute '!mkdir -p ~/.vim/temp'
"silent execute '!rm -f ~/.vim/temp/*~'
"set backupdir=~/.vim/temp
"set directory=~/.vim/temp
" -------------------------------------

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
set foldenable
set antialias
set linespace=6
set noequalalways

" Set Invisble characters
set listchars=tab:▸\ ,eol:¬

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
