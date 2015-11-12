" general settings
set nocompatible
set hidden
set modelines=0
set encoding=utf-8
set vb
set wildmenu
set showcmd
set backspace=indent,eol,start
set noswapfile
filetype plugin indent on
scriptencoding utf8
fixdel

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" indentation
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" code folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

" status line
set stl=%f\ %m\ %r\ line\ %l\ of\ %L\ [%p%%],\ column\ %c%=Type:%y
set laststatus=2

" baseline ui settings
" default non-gui colorscheme = desert, but prefer solarized
colorscheme desert
set cmdheight=2
set ruler
set showmatch
set nowrap
set number
syntax on

" relative line numbering
if exists('&relativenumber')
  set relativenumber
endif

" gui settings
if has('gui_running')
  hi CursorLine guibg=#606060
  " default colorscheme = desert, but prefer solarized
  colorscheme desert
  silent! colorscheme solarized
  set lines=100
  set columns=120
  set mousehide
  set guioptions=Ace
  set guifont=Inconsolata:h14,Consolas:h13,Monaco:h13
  set cursorline
endif

" set shell
if has('unix')
  let shell='bash'
endif

" move by row, not by line (with reverse mappings)
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" clear search highlights
nmap c/ :noh<cr>

"split navigation movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
