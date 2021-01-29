" Vim syntax file
" Language: PEGN
" Maintainer: Quint Daenen <me@di-wu.be>
" Latest Revision: 29 January 2021

if exists("b:current_syntax")
  finish
endif

" Comments
syn match pegnLineComment /^#.*$/
syn match pegnComment /#.*$/
hi def link pegnLineComment Comment
hi def link pegnComment Comment

" Strings
syn region pegnString start=+'+ end=+'+
hi def link pegnString String

" Characters
syn match pegnUnicode /u\(10[0-9A-F]\{4}\|[0-9A-F]\{4,5}\)/
syn match pegnBinary /b[0-1]\+/
syn match pegnHexadec /x[0-9A-F]\+/
syn match pegnOctal /o[0-7]\+/
hi def link pegnUnicode Number
hi def link pegnBinary Number
hi def link pegnHexadec Number
hi def link pegnOctal Number

" Quant
syn match pegnQuant /*\|+\|?\|{\d\+\(,\d\+\)\?}/
hi def link pegnQuant Constant

" Nodes
syn match pegnNode /\(\u\l\+\)\+/
hi def link pegnNode Define

" Tokens
syn match pegnToken /\u\(_\=\u\)\+/
hi def link pegnToken Keyword

" Classes
syn match pegnClass /\l\(_\=\l\)\+/
hi def link pegnClass Identifier

let b:current_syntax = 'pegn'

