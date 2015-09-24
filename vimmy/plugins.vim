" PLUGIN SETUP - NEOBUNDLE
" -------------------------------------------------------------------------------------------------

if has("vim_starting")
  if !filereadable(expand("~/.vim/autoload/plug.vim"))
    !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  endif

  call plug#begin()

  " UI & Genereal ------------------------------------------------------------{{{
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'kien/ctrlp.vim'
  Plug 'FelikZ/ctrlp-py-matcher'
  Plug 'mileszs/ack.vim'
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
  Plug 'wellle/targets.vim'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-eunuch'
  Plug 'haya14busa/incsearch.vim'
  Plug 'Konfekt/FastFold'
  Plug 'bling/vim-airline'
  " Plug 'Shougo/vimproc.vim', { 'do': 'make' }
  " }}}
  " Tags ---------------------------------------------------------------------{{{
  " Plug 'xolox/vim-misc' " Requried by easytags
  " Plug 'xolox/vim-easytags'
  " }}}
  " Snippets -----------------------------------------------------------------{{{
  Plug 'honza/vim-snippets'
  Plug 'SirVer/ultisnips'
  " }}}
  " AutoComplete -------------------------------------------------------------{{{
  " Alternative: Plug 'Shougo/neocomplete.vim'
  Plug 'Valloric/YouCompleteMe', { 'do': 'python install.py' }
  " }}}
  " Linter -------------------------------------------------------------------{{{
  Plug 'scrooloose/syntastic'
  " }}}
  " Version Control ----------------------------------------------------------{{{
  Plug 'tpope/vim-fugitive'
  Plug 'idanarye/vim-merginal'
  Plug 'mhinz/vim-signify'
  " }}}
  " Javascript ---------------------------------------------------------------{{{
  Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
  " Plug 'marijnh/tern_for_vim', { 'do': 'npm install', 'for': 'javascript' }
  " }}}
  " CoffeeScript -------------------------------------------------------------{{{
  Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
  " }}}
  " PHP ----------------------------------------------------------------------{{{
  " Plug 'vim-scripts/phpfolding.vim', {'script_type': 'ftplugin'}
  Plug 'shawncplus/phpcomplete.vim', { 'for': 'php' }
  " Plug 'spf13/PIV', { 'for': 'php' }
  " }}}
  " Python -------------------------------------------------------------------{{{
  Plug 'hdima/python-syntax', { 'for': 'python' }
  Plug 'public/vim-sort-python-imports', { 'for': 'python' }
  Plug 'davidhalter/jedi-vim', { 'for': 'python' }
  Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }
  " }}}
  " Twig -------------------------------------------------------------------{{{
  Plug 'evidens/vim-twig'
  " }}}

  " Themes ------------------------------------------------------------------ {{{
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
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'jdkanani/vim-material-theme'
  " }}}

  call plug#end()
endif

" vim: fdm=marker:sw=2:sts=2:et
