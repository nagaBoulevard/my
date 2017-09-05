" Alternative file to study vim configutaration

" PLUGINS {{{
" using vim-plug

" select the plugin directory
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdcommenter'
Plug 'rust-lang/rust.vim'
Plug 'godlygeek/tabular'
Plug 'ibab/vim-snakemake'
Plug 'junegunn/goyo.vim'
Plug 'benmills/vimux'

call plug#end()

" }}}


" LOOK {{{

syntax enable
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark='soft'

hi Normal		ctermbg=None
hi VertSplit	ctermbg=None
hi Folded		ctermbg=None	ctermfg=214		cterm=bold
hi FoldColumn	ctermbg=None
hi Tabline		ctermbg=None	ctermfg=243		cterm=bold
hi TabLineFill	ctermbg=None
hi TablineSel	ctermbg=None	ctermfg=9		cterm=bold
hi Pmenu		ctermbg=None	ctermfg=142
hi PmenuSel		ctermbg=None	ctermfg=9		cterm=reverse
hi StatusLineNC	ctermbg=None	ctermfg=243		cterm=bold

" change on insertmode
hi StatusLine					ctermbg=None	ctermfg=9 		cterm=bold
au InsertEnter * hi StatusLine	ctermbg=None	ctermfg=142		cterm=bold
au InsertLeave * hi StatusLine	ctermbg=None	ctermfg=9 		cterm=bold


" set the statusline as
" cropped filename : ft : percent_on_tot
set statusline=%=\ %.16F\ %y\ %p%%\ \ 
set fillchars=vert:\|,stl:\ ,stlnc:-
set laststatus=2

set encoding=utf8
set list listchars=tab:»\ ,trail:·

" }}}


" GENERAL {{{

set backspace=indent,eol,start				" real backspace
set autoindent
set smarttab
set tabstop=4 								" the numner of spaces that are shown to represent a <TAB>
set softtabstop=4							" the number of spaces inserted with <TAB>
" set expandtab								auto convert <TAB> in spaces
filetype indent on

set foldmethod=marker

set shiftround
set number									" display col numbers
set ruler									" display cursor position
set showcmd
set wildmenu								" autocomplete menu
set noshowmode								" hide the current mode
set completeopt=menuone,longest,preview

set autoread								" auto detect if a file has been changed from outside

set showmatch								" hi the matches
set incsearch								" search as chars are entered
set hlsearch								" hi the mathces of search
set ignorecase								" ignore the case while searching
set smartcase								" be smart with the case while searching

set mouse=a									" mouse active!
set hidden									" set abandoned buffers as hidden
set nobackup
set nowritebackup
set noswapfile
set fileformats=unix,dos,mac

" General }}}


" VIMI MAPPING {{{
" the idea is to completely reimagine Vim,
" removing the modal feature

" set always on insert mode
au VimEnter * startinsert

" to run commands
autocmd CmdwinEnter * startinsert! | imap <silent> <F3> <Esc>:q<CR>a
"autocmd CmdwinLeave * imap <C-q> <Esc><C-q> | imap <CR> <CR>
nmap <F3> :<C-f>
imap <F3> <Esc>:<C-f>

" to perform 'quick' actions, the Ctrl is used

" V = Visual Mode
imap <C-v> <Esc>:normal v<CR>a

" U = Undo
imap <C-u> <Esc>:normal u<CR>a

" R = Register

" D = Delete
imap <C-d><C-left> <C-w>
imap <C-d><C-d> <Esc>:normal dd<CR>a

" F = Find

" O = Fold
imap <C-o> <Esc>za<CR>i

" Move lines up and down
imap  <C-up>    <ESC>:m-2<CR>a
imap  <C-down>  <ESC>:m+1<CR>a

" }}}


" MAPPING {{{

" what should be standard
cnoreabbrev Q q
cnoreabbrev W w
cnoreabbrev E e
cnoreabbrev Wq wq
cnoreabbrev WQ wq

" remove the Ex mod
nnoremap q <nop>
nnoremap Q <nop>

" normal backspace
nmap <BS> i<BS><Esc>l

" Tabs
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>i

" leader
let mapleader = ';'

"identify the hi group at the cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
			\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
			\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Mapping }}}


" PLUG-OPTIONS {{{
let g:VimuxHeight = "33"
" }}}


" FILETYPES {{{

au BufRead,BufNewFile *.bn set filetype=bnote
au BufRead,BufNewFile *.lp set filetype=lp
au BufRead,BufNewFile *.ws set filetype=wasp

" support for snakemake is not working
au BufRead,BufNewFile Snakefile set ft=snakemake

" }}}
