" GENERAL SETTINGS
" -------------------------------------------------------------------------------------------------

set nocompatible

" Set syntax highlighting on
syntax on

if has("mouse")
    set mouse=a                         " Enable mouse
    set ttymouse=xterm2
endif
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
" Create backup and tmp directories
" Delete old temp files on start
"silent execute '!mkdir -p ~/.vim/temp'
"silent execute '!rm -f ~/.vim/temp/*~'
"set backupdir=~/.vim/temp
"set directory=~/.vim/temp
" -------------------------------------

" Fix Backspace
set backspace=indent,eol,start
set encoding=utf-8
set laststatus=2
" set noshowmode
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
set shiftround
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

" display+=lastline               " Show as much as possible of wrapped last line
if has("linebreak")
  set linebreak                 " Wrap lines at word boundaries
  set showbreak=...
  if exists("+breakindent")
    set breakindent             " Indent soft-wrapped lines
  endif
endif
set nowrap

set fillchars=vert:\ ,diff:\    " Use space for vertical split, diff fill char

" Set Invisble characters
set listchars=tab:>\ ,extends:>,precedes:<,nbsp:+
if &termencoding ==# "utf-8" || &encoding ==# "utf-8"
  let &fillchars = "vert:\u2502,diff: "
  let &listchars = "tab:\u25b8 ,extends:\u276f,precedes:\u276e,nbsp:\u2334"
  if has("linebreak")
    let &showbreak = "\u21aa"
  endif
endif

" Global ignore pattern
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,__pycache__

filetype plugin on
filetype plugin indent on
