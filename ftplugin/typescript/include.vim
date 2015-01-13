" after/ftplugin/typescript/include.vim
" author : h14i <hayato.tsukagoshi@gmail.com>
" license: public domain
if exists('b:did_ftplugin_typescript_include') && b:did_ftplugin_typescript_include
  finish
endif
let b:did_ftplugin_typescript_include = 1

let s:cpo = &cpo
set cpo&vim

" TODO:
"   - consider the path delimiter of windows.
setlocal suffixesadd=.ts
" let &l:include = '^\/\/\/\s*<\s*reference\s\+path='
setlocal include=^\/\/\/\s*<\s*reference\s\+path=

if exists('b:undo_ftplugin')
  let b:undo_ftplugin = ' | ' . b:undo_ftplugin
else
  let b:undo_ftplugin = ''
endif
let b:undo_ftplugin = 'setl sua< inc<' . b:undo_ftplugin

let &cpo = s:cpo
unlet s:cpo
" vim: et sts=2 sw=2:
