nnoremap <buffer> <LocalLeader>r :<C-U>call spacevim#lang#rust#Run()<CR>
nnoremap <buffer> <LocalLeader>b :<C-U>call spacevim#lang#rust#Build()<CR>
nnoremap <buffer> <LocalLeader>= :RustFmt<CR>

if !exists('g:spacevim_rust')
  if g:spacevim_timer
    call timer_start(300, 'spacevim#defer#rust')
  endif
  let g:spacevim_rust = 1
endif
