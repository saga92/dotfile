execute pathogen#infect()
syntax on
filetype plugin indent on
map <F2>  :NERDTreeToggle<CR>
let NERDTreeDirArrows=0
set nu

set history=100
set autoread

let mapleader = ","
let g:mapleader = ","

" Fast editing of the .vimrc
map <leader>e :sp ~/.vimrc<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc

set so=7
set ruler "Always show current position
set cmdheight=2 "The commandbar height
set hid "Change buffer - without saving

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" set ignorecase "Ignore case when searching
set hlsearch "Highlight search things
set incsearch "Make search act like search in modern browsers
set magic "Set magic on, for regular expressions
set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" No sound on errors
set noerrorbells
set novisualbell

" chinese character supported
set fileencodings=utf-8,cp936,gbk,default,latin1
set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set lbr
set tw=120

set cindent
set si "Smart indet
set ai "Auto indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""
" Always hide the statusline
set laststatus=2

" Format the statusline
set statusline=
set statusline+=%f "path to the file in the buffer, relative to current directory
set statusline+=\ %h%1*%m%r%w%0* " flag
set statusline+=\ [%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=%{&encoding}, " encoding
set statusline+=%{&fileformat}] " file format
set statusline+=\ Line:%l/%L
set statusline+=\ Col:%c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"auto comment
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
func! SetTitle()
    call setline(1,"#!/usr/bin/env python")
    call setline(2, "# -*- coding: utf-8 -*-")
endfunc
autocmd BufNewFile *.py exec ":call SetTitle()"

let python_highlight_all=1
let python_version_2=1
"highlight MatchParen cterm=bold ctermfg=cyan
