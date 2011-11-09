" ~/.vim/bundle/sessions/inw-built-green.vim: Vim session script.
" Created by session.vim 1.4.20 on 01 November 2011 at 05:35:11.
" Open this file in Vim and run :source % to restore your session.

set guioptions=aegimrLtT
silent! set guifont=
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'railscasts' | colorscheme railscasts | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/public_html/inw-built-green
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +117 inwbuiltgreen/app.js
badd +67 inwbuiltgreen/public/javascripts/application.js
badd +3 inwbuiltgreen/views/registries/form/new.jade
badd +80 inwbuiltgreen/controllers/registries.js
badd +1 inwbuiltgreen/views/registries/form/index.jade
badd +1 inwbuiltgreen/views/registries/form/show.jade
badd +1 inwbuiltgreen/views/registries/form/sections/new.jade
badd +5 inwbuiltgreen/views/registries/form/sections/edit.jade
badd +5 inwbuiltgreen/views/registries/form/edit.jade
badd +738 system/templates/style/format.css
badd +45 inwbuiltgreen/middleware/navigation.js
badd +4 inwbuiltgreen/views/registries/registry_new.jade
badd +1 inwbuiltgreen/models/registry.js
badd +1 inwbuiltgreen/models/registry_form.js
silent! argdel *
set lines=60 columns=239
edit inwbuiltgreen/views/registries/form/sections/new.jade
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
tabnext 1
1wincmd w

" vim: ft=vim ro nowrap smc=128
