
syn keyword lpType int dec vec str bool true false

syn keyword lpNew fn class enum var
syn match   lpNew "!\(fn\|class\|enum\)"
syn keyword lpKeyword where alias void if else loop
syn match   lpKeyword "!\(if\|loop\)"

syn match lpComment "\-\-.*$"
syn match lpGlobal	"\$[a-zA-Z0-9][a-zA-Z0-9_]*"
syn match lpNum 	"\d[\d\._]*"
syn match lpPipe 	"\.\s*[a-z][a-zA-Z0-9_]*"
syn match lpClass	"[A-Z][a-zA-Z0-9_]*"


syn region lpStrInter contained start='{' end='}' 
syn region lpStr start='"' end='"' contains=lpStrInter

syn include @MD syntax/markdown.vim
syn region lpDoc start='----' end='----' contains=@MD keepend




hi link lpComment	Comment
hi link lpDoc		Comment
hi link lpType		Type
hi link lpNew		Statement
hi link lpKeyword	Keyword

hi link lpPipe		PreProc
hi link lpGlobal	Statement

hi link lpNum		Number
hi link	lpStr		String
hi link	lpStrInter	Constant
hi link lpClass		Constant




set tabstop=4
set shiftwidth=4
set expandtab
