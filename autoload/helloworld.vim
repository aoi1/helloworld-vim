scriptencoding utf-8

if exists('g:loaded_helloworld')
  finish
endif
let g:loaded_helloworld = 1

" ユーザー設定を一時退避
let s:save_cpo = &cpo
set cpo&vim

function! helloworld#helloworld()
  echo "Hello World!"
endfunction

" ユーザー設定を元に戻す
let &cpo = s:save_cpo
unlet s:save_cpo
