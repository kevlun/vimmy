" GENERAL SETTINGS
" -------------------------------------------------------------------------------------------------

set nocompatible

" Set syntax highlighting on
syntax on

set mouse=a                         " Enable mouse
set ttymouse=xterm2
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
set fillchars=stl:\ ,stlnc:\ ,vert:\ ,fold:- " Characters to fill the statuslines and vertical separators.
" set fillchars=stl:\ ,stlnc:\ ,vert:\│,fold:- " Characters to fill the statuslines and vertical separators.
set laststatus=2
set noshowmode
set showmatch
set ruler
set hlsearch
set incsearch
set smartcase
set smarttab
set noerrorbells
set visualbell
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab
set cursorline
set foldenable
set antialias
set linespace=6
set noequalalways
set wildmenu

" Autoload file on external changes
set autoread

" Hide abandoned buffers
set hidden

" Set Invisble characters
set listchars=tab:▸\ ,eol:¬

" Global ignore pattern
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,__pycache__

filetype plugin on
filetype plugin indent on
