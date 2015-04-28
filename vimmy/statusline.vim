" STATUSLINE
" -------------------------------------------------------------------------------------------------
"
function! Status(winnum)
    hi NormalMode guifg=#ffffff guibg=#6cc644 ctermfg=231 ctermbg=77
    hi InsertMode guifg=#ffffff guibg=#4183c4 ctermfg=231 ctermbg=68
    hi ReplaceMode guifg=#ffffff guibg=#bd2c00 ctermfg=231 ctermbg=124
    hi VisualMode guifg=#ffffff guibg=#ff9933 ctermfg=231 ctermbg=209
    hi InactiveMode guifg=#ffffff guibg=#999999 ctermfg=231 ctermbg=102

  let active = a:winnum == winnr()
  let bufnum = winbufnr(a:winnum)

  let stat = ''
  function! Color(active, code, content)
    if a:active
      return '%#' . a:code . '#' . a:content . '%*'
  else
      return a:content
    endif
  endfunction

  function! ActiveContent(active, content)
      if a:active
          return a:content
      else
          return ''
      endif
  endfunction


  " this handles alternative statuslines
  " let usealt = 0
  "
  " let altstat = Color(active, 4, ' »')
  "
  " let type = getbufvar(bufnum, '&buftype')
  " let name = bufname(bufnum)
  "
  " if type ==# 'help'
  "   let altstat .= ' ' . fnamemodify(name, ':t:r')
  "   let usealt = 1
  " elseif name ==# '__Gundo__'
  "   let altstat .= ' Gundo'
  "   let usealt = 1
  " elseif name ==# '__Gundo_Preview__'
  "   let altstat .= ' Gundo Preview'
  "   let usealt = 1
  " endif
  "
  " if usealt
  "   let altstat .= Color(active, 4, ' «')
  "   return altstat
  " endif

  function! VimMode(active, minimal)
    let l:active = a:active
    let l:mode = mode()

    let padding = ' '
    if !l:active && a:minimal
        return Color(!l:active, "InactiveMode", padding)
    endif

    if l:mode ==# "n"
        let name = a:minimal ? padding : "\ NORMAL"
        return Color(l:active, "NormalMode", name)
    elseif l:mode ==# "i"
        let name = a:minimal ? padding : "\ INSERT"
        return Color(l:active, "InsertMode", name)
    elseif l:mode ==# "R"
        let name = a:minimal ? padding : "\ RPLACE"
        return Color(l:active, "ReplaceMode", name)
    elseif l:mode ==# "v"
        let name = a:minimal ? padding : "\ VISUAL"
        return Color(l:active, "VisualMode", name)
    elseif l:mode ==# "V"
        let name = a:minimal ? padding : "\ V-LINE"
        return Color(l:active, "VisualMode", name)
    elseif l:mode ==# ""
        let name = a:minimal ? padding : "\ V-BLCK"
        return Color(l:active, "VisualMode", name)
    else
        let name = a:minimal ? padding : l:mode
        return Color(l:active, "NormalMode", name)
    endif
  endfunction

  " Vim Mode
  let stat .= VimMode(active, 1)

  " Syntastic
  let stat .= Color(active, "warningmsg", SyntasticStatuslineFlag())

  " file encoding
  let encoding = strlen(&fenc)?&fenc:' '
  let stat .= ActiveContent(active, encoding != ' ' ? ' ' . encoding . '|' : encoding)

  " file format
  let stat .= ActiveContent(active, &ff)

  " file name
  let stat .= active ? ' »' : ' «'
  let stat .= ' %<'
  let stat .= '%f'
  let stat .= active ? ' «' : ' »'

    " file modified
    let modified = getbufvar(bufnum, '&modified')
    let stat .= modified ? ' +' : ''

  " read only
  let readonly = getbufvar(bufnum, '&readonly')
  let stat .= readonly ? ' ‼' : ''

  " paste
  if active && &paste
    let stat .= ' %2*' . 'P' . '%*'
  endif

  " right side
  let stat .= '%='

  " git branch
  if exists('*fugitive#head')
    let head = fugitive#head()

    if empty(head) && exists('*fugitive#detect') && !exists('b:git_dir')
      call fugitive#detect(getcwd())
      let head = fugitive#head()
    endif
  endif

  if !empty(head)
    let stat .= ' ← ' . head . ' '
  endif

  return stat
endfunction
" }}}

" Status AutoCMD: {{{
function! s:RefreshStatus()
  for nr in range(1, winnr('$'))
    call setwinvar(nr, '&statusline', '%!Status(' . nr . ')')
  endfor
endfunction

augroup status
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter,SessionLoadPost,ColorScheme * call <SID>RefreshStatus()
augroup END
