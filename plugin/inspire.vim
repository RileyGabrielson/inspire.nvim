if exists('g:loaded_inspire') | finish | endif

" expose vim commands and interface here
" nnoremap <Plug>PlugCommand :lua require(...).plug_command()<CR>

nnoremap <Plug>ShowQuote :lua require('inspire').show_quote()<CR>

let s:save_cpo = &cpo
set cpo&vim

let g:loaded_inspire = 1

let &cpo = s:save_cpo
unlet s:save_cpo
