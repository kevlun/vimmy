let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#source('file_rec/async', 'ignore_pattern',
            \ '\.local\/*\|\.config\/google*\|.vim/undo\|.vim/bundle\|.cache*\|node_modules\|bower_components\|fonts')

