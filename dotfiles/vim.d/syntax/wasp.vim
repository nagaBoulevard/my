syn keyword waspType int dec vec str bool true false

syn keyword waspNew fn class enum let mut
syn keyword waspKeyword if match loop

syn match waspDiv		"[\\(\\)]"
syn match waspComment	"\-\-.*$"
syn match waspGlobal	"\$[a-zA-Z0-9][a-zA-Z0-9_]*"
syn match waspNum		"\d[\d\._]*"
syn match waspPipe		"\.\s*.[a-zA-Z0-9_]*" " TODO rename
syn match waspClass		"[A-Z][a-zA-Z0-9_]*"


syn region waspStrInter contained start='(' end=')' 
syn region waspStr start="'" end="'" contains=waspStrInter

syn include @MD syntax/markdown.vim
syn region waspDoc start='----' end='----' contains=@MD keepend



hi link waspComment	Comment
hi link waspDoc		Comment
hi link waspType		Type
hi link waspNew		Statement
hi link waspKeyword	Keyword

hi link waspDiv		Keyword
hi link waspPipe		PreProc
hi link waspGlobal	Statement

hi link waspNum		Number
hi link	waspStr		String
hi link	waspStrInter	Constant
hi link waspClass		Constant




set tabstop=4
set shiftwidth=4

