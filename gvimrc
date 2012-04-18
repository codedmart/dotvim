set background=dark
colorscheme solarized
"colorscheme railscasts
"set gfn=Melso\ LG\ M\ 10
"set gfn=Consolas\ 11
"set gfn=Bitstream\ Vera\ Sans\ Mono\ 10
"set guifont=Ubuntu\ Mono:h16
set guifont=Inconsolata:h16
" remove toolbar, menubar, and scrollbar
set guioptions-=T
set guioptions-=m
set guioptions-=r
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-F3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>
