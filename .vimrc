set nocompatible
set ttyfast
set lazyredraw
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let mapleader=","
let maplocalleader=","
let NERDTreeShowHidden=1
let g:mapleader=","
let g:Powerline_symbols='unicode'
let g:airline_powerline_fonts=1
let g:localvimrc_ask=0
let g:cpp_class_scope_highlight=1
let g:cpp_experimental_template_highlight=1
let g:indentLine_color_term = 239
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

execute pathogen#infect()
filetype plugin indent on
syntax enable

colorscheme flattown
" colorscheme solarized
" set background=light
" let g:indentLine_color_term=14

set t_Co=256
set noerrorbells
set showmatch
set expandtab
set tabstop=2
set shiftwidth=2
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set number
set nowrap
set ruler
set hls
set incsearch
set laststatus=2
set synmaxcol=480
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set list " show trailing whiteshace and tabs
set showmatch
set autoindent
set copyindent
set wildignore=*.swp,*.bak,*.pyc
set pastetoggle=<F2>
set splitbelow
set splitright
set colorcolumn=80

command! -bar -range=% Trim :<line1>,<line2>s/\s\+$//e
command FmtXML exe "%!xmllint --format --recover - 2>/dev/null"
command FmtJSON exe "%!jq '.'"

iabbrev rpry require 'pry'; binding.pry;
iabbrev ipdb import pdb; pdb.set_trace()

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
end

nmap <silent> <leader>c :tabnew<CR>
nmap <silent> <leader>t :tabnext<CR>
nmap <silent> <leader>p :tabprev<CR>
nmap <silent> <leader>/ :nohlsearch<CR>

map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /^[^:]*:<CR>
vmap <Leader>a: :Tabularize /^[^:]*:<CR>
nmap <Leader>a. :Tabularize /=><CR>
vmap <Leader>a. :Tabularize /=><CR>
nmap <Leader>a{ :Tabularize / \zs{<CR>
vmap <Leader>a{ :Tabularize / \zs{<CR>
nmap <Leader>as :Tabularize /\S\+<CR>
vmap <Leader>as :Tabularize /\S\+<CR>

nmap <Leader>m :MRU<CR>
vmap <Leader>m :MRU<CR>

nmap <Leader>et Iexpect(<ESC>A).to 
nmap <Leader>ete Iexpect(<ESC>A).to eq()<ESC>i
nmap <Leader>it Iit '<ESC>A' do<CR>
nmap <Leader>jb :call JsBeautify()<cr>

nmap <Leader>f :CtrlP<CR>

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
