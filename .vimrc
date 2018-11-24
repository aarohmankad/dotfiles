set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'raimondi/delimitmate'
Plugin 'elzr/vim-json'

call vundle#end()
filetype plugin indent on

syntax enable
colorscheme industry

" emmet config
let g:user_emmet_leader_key='<C-E>'

" multiple-cursors config
let g:multi_cursor_next_key='<C-d>'

" syntax/editing
set t_Co=256
set relativenumber
set number
set spell spelllang=en_us
set nowrap
set title

" auto_complete
set wildmode=longest,list,full
set wildmenu

" 2 spaces instead of tabs
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set backspace=indent,eol,start

" show last command
set showcmd

" allow different indentations per file
filetype indent on

" only redraw what's needed
set lazyredraw

" show matching [{(
set showmatch

" search as characters are entered
set incsearch
set ignorecase

" highlight search results
set hlsearch

" enable folding
set foldenable

" unfold to begin
set foldlevelstart=10

" max level of folding
set foldnestmax=10

" fold on the indent
set foldmethod=indent

" visual move
nnoremap j gj
nnoremap k gk

" change leader from \ to ,
let mapleader=","       " leader is comma

" visual undo menu
nnoremap <leader>u :GundoToggle<CR>

" save session
nnoremap <leader>s :mksession<CR>

" status line
set laststatus=2
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..)
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.

au BufWinLeave * mkview

"set term=xterm-256color

fun! IgnoreCamelCaseSpell()
    syn match CamelCase /\<[A-Z][a-z]\+[A-Z].\{-}\>/ contains=@NoSpell transparent
    syn cluster Spell add=CamelCase
endfun
autocmd BufRead,BufNewFile * :call IgnoreCamelCaseSpell()

fun! IgnoreSnakeCaseSpell()
    syn match SnakeCase /<[A-Z][a-z]+_[A-Z].{-}>/ contains=@NoSpell transparent
    syn cluster Spell add=SnakeCase
endfun
autocmd BufRead,BufNewFile * :call IgnoreSnakeCaseSpell()

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction

