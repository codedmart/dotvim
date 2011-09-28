filetype off
call pathogen#infect()
"call pathogen#helptags()

"if $COLORTERM == "gnome-terminal" 
  "set term=rxvt-256color 
"endif
set background=dark
"let g:solarized_termcolors=256
colorscheme solarized
"colorscheme railscasts
"color railscastsmod 
" color vividchalk
" color inkpot
" let g:inkpot_black_background = 1

filetype on  " Automatically detect file types.
set nocp  " We don't want vi compatibility.

if &term =~ "xterm\\|rxvt\\|screen"
  :silent !echo -ne "\033]12;yellow\007"
  let &t_SI = "\033]12;green\007"
  let &t_EI = "\033]12;yellow\007"
  autocmd VimLeave * :!echo -ne "\033]12;yellow\007"
endif

" alt+n or alt+p to navigate between entries in QuickFix
map <silent> <m-p> :cp <cr>
map <silent> <m-n> :cn <cr>

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Sessions
let g:session_autosave = 1
let g:session_directory = '~/.vim/bundle/sessions' 

" Change which file opens after executing :Rails command
let g:rails_default_file = 'Gemfile'
 
syntax enable
syntax on

set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=1000  " Number of things to remember in history.
set hidden
set ignorecase 
set smartcase
set title
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
" set nowrap  " Line wrapping off
set wrap linebreak nolist
set timeout ttimeoutlen=100 timeoutlen=5000 " Time to wait after ESC (default causes an annoying delay)

" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.

set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
filetype indent on
filetype plugin on
set autoindent
set smarttab
set expandtab

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
 
" Cut/Copy/Paste
map <C-c> "+y
map <C-p> "+gP

" Delete Buffer shortcut
map <C-d> :bd<CR>

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
 set list " Show $ at end of line and trailing space as ~
 set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Backups & Files
set backup                     " Enable creation of backup file.
set backupdir=~/.vim/bundle/backups " Where backups will go.
set directory=~/.vim/bundle/tmp     " Where temporary files will go.

" qbuf related
let g:qb_hotkey = "<C-b>"
" Nerd related
map <C-x> :NERDTreeToggle<CR>
map <C-t> :CommandT<CR>
map <C-A-t> :CommandTFlush<CR> 
let g:CommandTSelectPrevMap=['<C-p>', '<C-k>', '<Esc>OA', '<Up>']
let g:CommandTSelectNextMap=['<C-n>', '<C-j>', '<Esc>OB', '<Down>']

let g:closetag_html_style=1 

" Haskell
" use ghc functionality for haskell files
"au Bufenter *.hs compiler ghc

" configure browser for haskell_doc.vim
let g:haddock_browser = "/usr/bin/chromium"

" Gist stuff
let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_detect_filetype = 1
let g:github_user = "zmbmartin"
let g:github_token = "465b5cc9ad0c07e8671182649d69915d"

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Gundo
nnoremap <C-g> :GundoToggle<CR>

" Easier line break cursor movement
vmap <A-Down> gj
vmap <A-Up> gk
vmap <A-End> g$
vmap <A-Home> g^
nmap <A-Down> gj
nmap <A-Up> gk
nmap <A-End> g$
nmap <A-Home> g^
