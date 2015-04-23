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

" UI & General
" -------------------------------------------------------------------------------------------------
NeoBundle 'https://github.com/bling/vim-airline.git'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'szw/vim-ctrlspace'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'ivalkeen/vim-ctrlp-tjump'
NeoBundle 'taglist.vim'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tsukkee/unite-tag'
NeoBundle 'Shougo/neomru.vim'

NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\   'windows' : 'tools\\update-dll-mingw',
\   'cygwin' : 'make -f make_cygwin.mak',
\   'mac' : 'make -f make_mac.mak',
\   'linux' : 'make',
\   'unix' : 'gmake',
\   },
\ }

"NeoBundle 'SirVer/ultisnips'
"NeoBundle 'honza/vim-snippets'
"NeoBundle 'Valloric/YouCompleteMe', {
 "\ 'build'      : {
    "\ 'mac'     : './install.sh --gocode-completer',
    "\ 'unix'    : './install.sh --clang-completer --system-libclang --omnisharp-completer',
    "\ 'windows' : './install.sh --clang-completer --system-libclang --omnisharp-completer',
    "\ 'cygwin'  : './install.sh --clang-completer --system-libclang --omnisharp-completer'
    "\ }
 "\ }

" Linter
" -------------------------------------------------------------------------------------------------
NeoBundle 'scrooloose/syntastic'

" Git
" -------------------------------------------------------------------------------------------------
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'idanarye/vim-merginal'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'

" Coffee-Script
" -------------------------------------------------------------------------------------------------
NeoBundle 'kchmck/vim-coffee-script'

" PHP
" -------------------------------------------------------------------------------------------------
NeoBundle 'vim-scripts/phpfolding.vim', {'script_type': 'ftplugin'}
NeoBundle 'm2mdas/phpcomplete-extended'
"NeoBundle 'spf13/PIV'

" Python
" -------------------------------------------------------------------------------------------------
NeoBundle 'public/vim-sort-python-imports'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'jmcantrell/vim-virtualenv'

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
NeoBundle 'tomasr/molokai'
NeoBundle 'reedes/vim-colors-pencil'
NeoBundle 'noahfrederick/vim-hemisu'
NeoBundle 'kokakolako/vim-hemisu-airline'

" -------------------------------------------------------------------------------------------------
call neobundle#end()

syntax enable

filetype plugin on
filetype plugin indent on

" Check for uninstalled bundles
NeoBundleCheck
