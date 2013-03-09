" paredit.vim:
"               paredit# mode for Slimv
" Version:      0.9.8
" Last Change:  18 Aug 2012
" Maintainer:   Tamas Kovacs <kovisoft at gmail dot com>
" License:      This file is placed in the public domain.
"               No warranty, express or implied.
"               *** ***   Use At-Your-Own-Risk!   *** ***
"
" =====================================================================
"
"  Load Once:
if &cp || exists( 'g:paredit_loaded' )
    finish
endif

let g:paredit_loaded = 1

" Needed to load filetype and indent plugins
filetype plugin on
filetype indent on

" =====================================================================
"  Global variable definitions
" =====================================================================

" paredit# mode selector
if !exists( 'g:paredit_mode' )
    let g:paredit_mode = 1
endif

" Match delimiter this number of lines before and after cursor position
if !exists( 'g:paredit_matchlines' )
    let g:paredit_matchlines = 100
endif

" Use short keymaps, i.e. J instead of <Leader>J
if !exists( 'g:paredit_shortmaps' )
    let g:paredit_shortmaps = 0
endif

" Custom <Leader> for the paredit# plugin
if !exists( 'g:paredit_leader' )
    if exists( 'mapleader' )
        let g:paredit_leader = mapleader
    else
        let g:paredit_leader = ','
    endif
endif

" Use 'Electric Return', i.e. add double newlines if enter pressed before a closing paren
if !exists( 'g:paredit_electric_return' )
    let g:paredit_electric_return = 1
endif


" =====================================================================
"  Autocommands
" =====================================================================

au BufNewFile,BufRead *.lisp call paredit#InitBuffer()
au BufNewFile,BufRead *.cl   call paredit#InitBuffer()
au BufNewFile,BufRead *.clj  call paredit#InitBuffer()
au BufNewFile,BufRead *.cljs call paredit#InitBuffer()
au BufNewFile,BufRead *.scm  call paredit#InitBuffer()
au BufNewFile,BufRead *.rkt  call paredit#InitBuffer()

