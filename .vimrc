set number
set tabstop=2
set expandtab
set paste
set spell

let @a='yypVr~'
let @b='yypVr^'
let @c='yypVr%'
let @d='yypVr-'
let @i='I**^[A**^['
let @z='$zfa}'

syntax on

source ~/.vim/syntax/python.vim
execute pathogen#infect()
filetype plugin indent on

iab teh the
