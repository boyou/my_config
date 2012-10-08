set nocompatible

if has("gui_running")
	set lines=999 columns=999
endif

filetype on
set autoindent
set smartindent

set hlsearch
set incsearch
set number

set showmatch

set tabstop=4
set shiftwidth=4

filetype plugin indent on
autocmd FileType * silent! source ~/.vim/%:e.vim
