" colors/sequence.vim - Traditional colorscheme file
" Name: Sequence
" Author: jdsherrington
" Maintainer: jdsherrington
" License: MIT

if exists('syntax_on')
  syntax reset
endif

if has('termguicolors')
  set termguicolors
endif

let g:colors_name = 'sequence'

lua require('sequence').load()
