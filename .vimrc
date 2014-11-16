" vim:fdm=marker:ts=4:sw=4:et:
"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|


" ------------  Syntastic  ------------------
let g:syntastic_javascript_checker              = "closurecompiler" 
let g:syntastic_javascript_closurecompiler_path = "~/.vim/closure-compiler/compiler.jar"
" ------------ end Syntastic ----------------
execute pathogen#infect()

set nu
set autoindent
set smartindent
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Search settings
set incsearch
set ignorecase
set smartcase
set hlsearch

" Vim-airline settings
set laststatus=2

syntax on
set background=dark
colorscheme solarized

" ------------  Ctrl-P Settings  ------------------
"let g:ctrlp_map = '<Leader>t'
"let g:ctrlp_match_window_bottom = 0
"let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_dotfiles = 0
"let g:ctrlp_switch_buffer = 0
" ----------  end Ctrl-P Settings  ----------------

" ------------  Vim Airline ------------------
let g:airline#extensions#tabline#enabled = 1
" ----------  end Vim Airline ----------------

filetype plugin indent on

" ------------  Keybindings  ------------------
" Changes j/k to be able to move normally on wrapped lines
nmap j gj
nmap k gk

" Toggle line numbers
nmap \l :setlocal number!<CR>

" Toggle line wrap modes
nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>

" toggle paste mode
nmap \o :set paste!<CR>

" Emacs-style movement
"cnoremap <C-a>  <Home>
"cnoremap <C-b>  <Left>
"cnoremap <C-f>  <Right>
"cnoremap <C-d>  <Delete>
"cnoremap <M-b>  <S-Left>
"cnoremap <M-f>  <S-Right>
"cnoremap <M-d>  <S-right><Delete>
"cnoremap <Esc>b <S-Left>
"cnoremap <Esc>f <S-Right>
"cnoremap <Esc>d <S-right><Delete>
"cnoremap <C-g>  <C-c>

" Removes highlighted search term when no longer needed
nmap \q :nohlsearch<CR>

" Return to most recent file in buffer :e# or :b#
nmap <C-e> :e#<CR>

" Buffer navigation Prev/Next
"nmap <C-n> :bnext<CR>
"nmap <C-p> :bprev<CR>

" Ctrl-P's goto buffer
"nmap ; :CtrlPBuffer<CR>
nmap <C-p> :CtrlPBuffer<CR>

" Toggle NERDTree visibility
nmap \e :NERDTreeToggle<CR>

" Format tabs for entire file
nmap \f gg=G

" Re-tab code. Useful for reading other people's code
"nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
"nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
"nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
"nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>

" ----------  end Keybindings  ----------------

" Force terminal VIM to use 256 colors
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif
