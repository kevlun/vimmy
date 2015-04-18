" PLUGIN: NERDTree
" -------------------------------------------------------------------------------------------------

" Display NERDTree on right side
let g:NERDTreeWinPos = "left"

" let NERDTree ignore som files
let NERDTreeIgnore=['\.pyc$', '\~$', '__pycache__']

let NERDTreeQuitOnOpen=0
let NERDTreeDirArrows=1
let NERDTreeMinimalUI=1
let NERDTreeChDirMode=2

let g:NERDTreeIndicatorMap = {
    \ "Modified"  : "~",
    \ "Staged"    : "+",
    \ "Untracked" : "+",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "X",
    \ "Dirty"     : "~",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

let g:nerdtree_tabs_autofind=1
