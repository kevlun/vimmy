" PLUGIN: Syntastic
" -------------------------------------------------------------------------------------------------
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Better :sign interface symbols
let g:syntastic_enable_highlighting=1
let g:syntastic_enable_signs=1
let g:syntastic_enable_balloons=1

" Url: https://github.com/noahfrederick/dots/blob/master/vim/vimrc
if &termencoding ==# "utf-8" || &encoding ==# "utf-8"
  let g:syntastic_error_symbol         = "\u276f\u276f"
  let g:syntastic_warning_symbol       = "\u276f"
  let g:syntastic_style_error_symbol   = "\u276f\u276f"
  let g:syntastic_style_warning_symbol = "\u276f"
endif

" let g:syntastic_stl_format = ' %E{%e' . g:syntastic_error_symbol
" let g:syntastic_stl_format .= ' (line %fe)}'
" let g:syntastic_stl_format .= '%B{ }'
" let g:syntastic_stl_format .= '%W{%w' . g:syntastic_warning_symbol
" let g:syntastic_stl_format .= ' (line %fw)} '

let g:syntastic_stl_format = ' %E{' . g:syntastic_error_symbol . ' %e}'
let g:syntastic_stl_format .= '%W{ ' . g:syntastic_warning_symbol . ' %w}'

" Python
let g:syntastic_python_checkers = ['flake8', 'pylint']
let g:syntastic_python_flake8_args = '--max-line-length=100'
let g:syntastic_python_pylint_args = "--max-line-length=100"

" CoffeeScript
let g:syntastic_coffee_checkers = ['coffeelint', 'coffee']

" PHP
let g:syntastic_php_phpcs_args="--report=csv --standard=PSR2"
