" Vim Configuration File (.vimrc) - Aaroh Mankad

" Cancel compatibility with vi
set nocompatible

" Activate Pathogen
call pathogen#infect()

" Display
set title " Update title of your terminal
set number " Add line numbers
set ruler " Display curson position
set wrap " Wrap lines when they get too long
set scrolloff=3 " Display at least 3 lines around your cursor

set guioptions=T " Enable the toolbar

" Search
set ignorecase " Ignore case when searching
set smartcase " If there is an Uppercase in your search term, force case-sensitive
set incsearch " Highlight search term matches when typing
set hlsearch " Highlight search results

" Beep
set visualbell " Prevent Vim from beeping
set noerrorbells " Prevent Vim from beeping

" Make Backspace behave as expected
set backspace=indent,eol,start

set hidden

syntax enable " Enable syntax highlighting

" Enable file-specific syntax highlighting and indentation
filetype on
filetype plugin on
filetype indent on

" Enable Solarized (dark)
" set t_Co=256
" set background=dark
" colorscheme solarized

