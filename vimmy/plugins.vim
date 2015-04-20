" PLUGIN SETUP - NEOBUNDLE
" -------------------------------------------------------------------------------------------------
set nocompatible
filetype off

if !isdirectory(expand("~/.vim/bundle/neobundle.vim/.git"))
    !git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
endif

set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" PLUGINS
" -------------------------------------------------------------------------------------------------
NeoBundle 'gmarik/Vundle.vim'
NeoBundle 'https://github.com/bling/vim-airline.git'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'idanarye/vim-merginal'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'jmcantrell/vim-virtualenv'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'taglist.vim'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'public/vim-sort-python-imports'
NeoBundle 'davidhalter/jedi-vim'

" THEMES
" -------------------------------------------------------------------------------------------------
NeoBundle 'morhetz/gruvbox'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'DAddYE/soda.vim'
NeoBundle 'croaky/vim-colors-github'
NeoBundle 'sickill/vim-monokai'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'zeis/vim-kolor'
NeoBundle 'notpratheek/vim-luna'
NeoBundle 'zenorocha/dracula-theme', {'rtp': 'vim/'}

" -------------------------------------------------------------------------------------------------
call neobundle#end()

filetype plugin on
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
