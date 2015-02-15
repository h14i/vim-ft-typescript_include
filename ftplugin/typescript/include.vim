" ftplugin/typescript/include.vim
" author : h14i <hayato.tsukagoshi@gmail.com>
" license: public domain
let s:cpo = &cpo
set cpo&vim

" TODO:
"   - consider the path delimiter (windows).
"   - 'require' statement.
"   - 'import' statement.

" '.js' is also to be included?
setlocal suffixesadd=.ts
let &l:include = '^\/\/\/\s*<\s*reference\s\+path='

if exists('b:undo_ftplugin')
  let b:undo_ftplugin = ' | ' . b:undo_ftplugin
else
  let b:undo_ftplugin = ''
endif
let b:undo_ftplugin = 'setl sua< inc<' . b:undo_ftplugin

let &cpo = s:cpo
unlet s:cpo
" vim: set et sts=2 sw=2:
