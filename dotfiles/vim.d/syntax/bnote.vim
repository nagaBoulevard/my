
runtime! syntax/html.vim
unlet b:current_syntax

syn match bnComment		"\-\-.*$"
syn region bnHeader	   start='{\.' end='\.}'
syn region bnHighlight start='`' end='`'
syn region bnBold	   start=':' end=':'

syn include @rust syntax/rust.vim
syn region bnMarkdown start='<rs>' end='</>' contains=@rust keepend
unlet b:current_syntax

syn include @md syntax/markdown.vim
syn region bnMarkdown start='<md>' end='</>' contains=@md keepend
unlet b:current_syntax


hi link	bnComment	Comment
hi link bnHeader	Type
hi link bnHighlight	KeyWord
hi link bnBold		PreProc
