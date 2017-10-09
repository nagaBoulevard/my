
" A rewamped version of markdown
"

" include the normal markdown syntax
runtime! syntax/markdown.vim

" add syn hi for code {{{
syn include @rust syntax/rust.vim
syn region bnMarkdown start='```\s*\(rs\|rust\)' end='```' contains=@rust keepend
unlet b:current_syntax


syn include @md syntax/markdown.vim
syn region bnMarkdown start='```\s*\(md\|markdown\|mdown\)' end='```' contains=@md keepend
unlet b:current_syntax


syn include @wasp syntax/wasp.vim
syn region bnWasp start='```\s*wasp' end='```' contains=@wasp keepend
unlet b:current_syntax


syn include @python syntax/python.vim
syn region bnWasp start='```\s*\(py\|python\|python3.5\)' end='```' contains=@python keepend
unlet b:current_syntax


syn include @C syntax/c.vim
syn region bnWasp start='```\s*c' end='```' contains=@C keepend
unlet b:current_syntax


syn include @cpp syntax/cpp.vim
syn region bnWasp start='```\s*cpp' end='```' contains=@cpp keepend
unlet b:current_syntax


" }}}

