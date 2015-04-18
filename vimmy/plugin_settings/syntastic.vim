" PLUGIN: Syntastic
" -------------------------------------------------------------------------------------------------

" Better :sign interface symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

let g:syntastic_enable_highlighting=1
let g:syntastic_enable_signs=0
let g:syntastic_enable_balloons=1

" Python
let g:syntastic_python_checkers = ['flake8', 'pylint']
" let g:syntastic_python_pylint_args = "--"
"autocmd FileType python let g:syntastic_check_on_wq = 0

" CoffeeScript
let g:syntastic_coffee_checkers = ['coffeelint', 'coffee']

" PHP
let g:syntastic_php_phpcs_args="--report=csv --standard=PSR2"
