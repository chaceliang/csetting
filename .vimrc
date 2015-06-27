
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

set ruler
set number
set autoindent
set autochdir
set colorcolumn=80
set statusline+=\ %P
set ic
set hls is
highlight ColorColumn ctermbg=DarkGray

syntax on

" vundle section
" install: git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}

call vundle#end()
filetype plugin indent on
