" hello world for vim plugin
" Version: 0.1

scriptencoding utf-8

if exists('g:loaded_helloworld')
    finish
endif
let g:loaded_helloworld = 1

" ユーザー設定を一時退避
let s:save_cpo = &cpo
set cpo&vim

:nmap z :call helloworld#helloworld()<CR>

" ユーザー設定を元に戻す
let &cpo = s:save_cpo
unlet s:save_cpo
