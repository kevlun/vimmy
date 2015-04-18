" Strip whitespace
function! StripWhitespace()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
command! Strip call StripWhitespace()<cr>