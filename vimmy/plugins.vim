" PLUGIN SETUP - NEOBUNDLE
" -------------------------------------------------------------------------------------------------
if !filereadable(expand("~/.vim/autoload/plug.vim"))
  !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin()

" PLUGINS
" -------------------------------------------------------------------------------------------------

" UI & General
" -------------------------------------------------------------------------------------------------
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'mileszs/ack.vim'
Plug 'szw/vim-ctrlspace'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'Lokaltog/vim-easymotion'
Plug 'Yggdroot/indentLine'
Plug 'godlygeek/tabular'
Plug 'editorconfig/editorconfig-vim'
Plug 'AndrewRadev/sideways.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'wellle/targets.vim'
Plug 'cohama/lexima.vim'
Plug 'vim-scripts/matchit.zip'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }

" Snippets
" -------------------------------------------------------------------------------------------------
" NeoBundle 'SirVer/ultisnips'
" NeoBundle 'honza/vim-snippets'

" AutoComplete
" -------------------------------------------------------------------------------------------------
" NeoBundle 'Shougo/neocomplete.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }

" Linter
" -------------------------------------------------------------------------------------------------
Plug 'scrooloose/syntastic'

" Version control
" -------------------------------------------------------------------------------------------------
Plug 'tpope/vim-fugitive'
Plug 'idanarye/vim-merginal'
Plug 'mhinz/vim-signify'

" Javascript
" -------------------------------------------------------------------------------------------------
Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
Plug 'marijnh/tern_for_vim', { 'for': 'javascript', 'do': 'npm install' }

" Coffee-Script
" -------------------------------------------------------------------------------------------------
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

" PHP
" -------------------------------------------------------------------------------------------------
" Plug 'vim-scripts/phpfolding.vim', {'script_type': 'ftplugin'}
" Plug 'm2mdas/phpcomplete-extended'
Plug 'shawncplus/phpcomplete.vim', { 'for': 'php' }
"Plug 'spf13/PIV'

" Python
" -------------------------------------------------------------------------------------------------
Plug 'public/vim-sort-python-imports', { 'for': 'python' }
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }
" }}}
" THEMES ------------------------------------------------------------------------ {{{
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'jonathanfilip/vim-lucius'
Plug 'w0ng/vim-hybrid'
Plug 'zeis/vim-kolor'
Plug 'notpratheek/vim-luna'
Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plug 'reedes/vim-colors-pencil'
Plug 'noahfrederick/vim-hemisu'
Plug 'kevlun/vim-lucid'
Plug 'jordwalke/flatlandia'
Plug 'john2x/flatui.vim'
" }}}

call plug#end()
" vim: fdm=marker:sw=2:sts=2:et
