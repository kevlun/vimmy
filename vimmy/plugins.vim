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
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'szw/vim-ctrlspace'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\   'windows' : 'tools\\update-dll-mingw',
\   'cygwin' : 'make -f make_cygwin.mak',
\   'mac' : 'make -f make_mac.mak',
\   'linux' : 'make',
\   'unix' : 'gmake',
\   },
\ }

" Snippets
" -------------------------------------------------------------------------------------------------
" NeoBundle 'SirVer/ultisnips'
" NeoBundle 'honza/vim-snippets'

" AutoComplete
" -------------------------------------------------------------------------------------------------
NeoBundle 'Shougo/neocomplete.vim'
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

" Version control
" -------------------------------------------------------------------------------------------------
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'idanarye/vim-merginal'
NeoBundle 'mhinz/vim-signify'

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
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'zeis/vim-kolor'
NeoBundle 'notpratheek/vim-luna'
NeoBundle 'zenorocha/dracula-theme', {'rtp': 'vim/'}
NeoBundle 'reedes/vim-colors-pencil'
NeoBundle 'noahfrederick/vim-hemisu'
NeoBundle 'kevlun/vim-lucid'
NeoBundle 'jordwalke/flatlandia'

" -------------------------------------------------------------------------------------------------
call neobundle#end()

syntax enable

filetype plugin on
filetype plugin indent on

" Check for uninstalled bundles
NeoBundleCheck
