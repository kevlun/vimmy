" Setup vundle plugins
set nocompatible
filetype off

if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
    !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'https://github.com/bling/vim-airline.git'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'idanarye/vim-merginal'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'kien/ctrlp.vim'
Plugin 'taglist.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Shougo/neocomplete.vim'

" THEMES
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'
Plugin 'DAddYE/soda.vim'
Plugin 'croaky/vim-colors-github'
Plugin 'sickill/vim-monokai'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'w0ng/vim-hybrid'
Plugin 'zeis/vim-kolor'

" End Vundle
call vundle#end()

filetype plugin on
filetype plugin indent on
