call pathogen#infect()

set background=dark
colorscheme solarized
"colorscheme railscasts

if &term =~ "xterm\\|rxvt\\|screen"
  :silent !echo -ne "\033]12;yellow\007"
  let &t_SI = "\033]12;green\007"
  let &t_EI = "\033]12;yellow\007"
  autocmd VimLeave * :!echo -ne "\033]12;yellow\007"
endif

filetype on  " Automatically detect file types.
filetype indent on
filetype plugin on
syntax enable
syntax on
set nocp  " We don't want vi compatibility.
" set cf  " Enable error files & error jumping.
" set clipboard+=unnamed  " Yanks go on clipboard instead.
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
set undofile
set undodir=/tmp

" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.

set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set autoindent
set smarttab
set expandtab

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

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
"let mapleader = ","
"let g:mapleader = ","

" Sessions
let g:session_autosave = 1
let g:session_directory = '~/.vim/bundle/sessions' 

" Change which file opens after executing :Rails command
let g:rails_default_file = 'Gemfile'

" Delete Buffer shortcut
" map <C-d> :bd<CR>

" Backups & Files
set backup                     " Enable creation of backup file.
set backupdir=~/.vim/bundle/backups " Where backups will go.
set directory=~/.vim/bundle/tmp     " Where temporary files will go.

" Nerd related
map <leader>n :NERDTreeToggle<CR>

let g:closetag_html_style=1 

" Haskell
" use ghc functionality for haskell files
au Bufenter *.hs compiler ghc

" configure browser for haskell_doc.vim
let g:haddock_browser = "/usr/bin/chromium"

" Gist stuff
"let g:gist_clip_command = 'xclip -selection clipboard'
"let g:gist_detect_filetype = 1
"let g:github_user = "zmbmartin"
"let g:github_token = "465b5cc9ad0c07e8671182649d69915d"

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Gundo
nnoremap <leader>g :GundoToggle<CR>
