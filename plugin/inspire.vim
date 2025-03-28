if exists('g:loaded_inspire') | finish | endif

let s:save_cpo = &cpo
set cpo&vim

let g:loaded_inspire = 1

let &cpo = s:save_cpo
unlet s:save_cpo
