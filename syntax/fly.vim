" Vim syntax file
" Language:     Fly
" Version:      0.1
" Last Change:  2026 Apr 25
" Maintainer:   NDRAEY <https://github.com/NDRAEY>

if exists("b:current_syntax")
  finish
endif

syn keyword flyStatement false true
syn keyword flyKeyword import new
syn keyword flyKeyword while if else
syn keyword flyKeyword for in
syn keyword flyKeyword return
syn keyword flyKeyword use static record func public private
syn keyword flySelf self
syn keyword flyFunction fn nextgroup=flyFunctionName skipwhite skipempty

syn match flyQuestionMark display "?\([a-zA-Z]\+\)\@!"
syn match flyIdentifier "\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*" display contained
syn match flyFunctionName "\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*" display contained

syn match flyNumber display "\<[0-9]*"
syn match flyHexNumber display "\<0x[a-fA-F0-9]\+"
syn match flyOctNumber display "\<0o[0-7_]\+"
syn match flyBinNumber display "\<0b[01_]\+"

syn region flyCommentLine start="#" end="$"

syn match flyEscape display contained /\\\([nrt0\\'"]\|x\x\{2}\)/
syn region flyString start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=flyEscape

hi def link flyKeyword Keyword
hi def link flyStatement Keyword
hi def link flyFunction Keyword
hi def link flySelf Constant
hi def link flyFunctionName Function
hi def link flyIdentifier Identifier
hi def link flyString String 
hi def link flyQuestionMark Special

hi def link flyNumber Number
hi def link flyHexNumber Number
hi def link flyOctNumber Number
hi def link flyBinNumber Number

hi def link flyCommentLine Comment
hi def link flyCommentBlock Comment
hi def link flyEscape Special

let b:current_syntax = "fly"

" vim: ts=8 sw=2
