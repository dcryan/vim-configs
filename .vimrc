" ------------  Syntastic  ------------------
let g:syntastic_javascript_checker              = "closurecompiler" 
let g:syntastic_javascript_closurecompiler_path = "~/.vim/closure-compiler/compiler.jar"
" ------------ end Syntastic ---------------
execute pathogen#infect()

set nu
set autoindent
set smartindent
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set incsearch
set ignorecase
set smartcase
set hlsearch
syntax on

nmap j gj
nmap k gk

filetype plugin indent on
