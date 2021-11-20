" show line number
set number

" syntax hightlight
syntax on

" support mouse operation
set mouse=a

set encoding=utf-8  

" set 256 colors
set t_Co=256

" the indent of next line keep same as the previos line
set autoindent

" replace TAB with spaces
set tabstop=4
set expandtab

" search results highlight
set hlsearch

" wrap line automatically
set wrap


inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
