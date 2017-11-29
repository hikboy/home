"This is hikboy's vimrc file, everyone else can use it freely!
"Have a good time!

execute pathogen#infect()
syntax on
filetype plugin indent on

set runtimepath+=/home/ht/ljbvim

set nu

colorscheme morning

"set guifont=Consolas:h12:cANSI:qDRAFT

set t_C0=256
"set background=dark
"colorscheme primary

so $HOME/abbreviations.vim

set shiftwidth=4 softtabstop=4 expandtab

let g:C_MapLeader  = ','
let mapleader = ","

map <C-s> <esc>:w<cr>

map ,e :e $HOME/.vimrc<cr>

map <C-F5> :so $HOME/.vimrc<cr>
map <F5> :so %<cr>

"below two mapping is no use sometime
"nmap <buffer> <CR> <C-]>
"nmap <buffer> <BS> <C-T>
 
" set statusline format
 
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

set statusline=%f\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

map <silent> <C-F2> : if &guioptions =~# 'T' <Bar>
                         \set guioptions-=T <Bar>
                         \set guioptions-=m <Bar>
                      \else <Bar>
                         \set guioptions+=T <Bar>
                         \set guioptions+=m <Bar>
                      \endif<CR>

set guioptions-=m
set guioptions-=T
  
"set cursorline
"set cursorcolumn


set nocompatible

map <C-n> :NERDTreeToggle<CR>

":autocmd BufNewFile *.html 0r $HOME/templates/html.tpl
:autocmd BufNewFile * silent! 0r $HOME/templates/%:e.tpl

nnoremap <c-j>      /<+.\{-1,}+><cr>c/+>/e<cr>
inoremap <c-j> <ESC>/<+.\{-1,}+><cr>c/+>/e<cr>
