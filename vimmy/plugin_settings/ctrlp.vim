" Set CTRL-P Options
if exists("g:ctrl_user_command")
    unlet g:ctrlp_user_command
endif

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore='\v[\/](node_modules|env)|(\.(swp|ico|git|svn|hg|pyc))$'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
let g:ctrlp_clear_cache_on_exit=0
