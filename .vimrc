set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'tpope/vim-fugitive'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'raimondi/delimitmate'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin on
filetype indent on
syntax on
set t_Co=256
set hidden
set wildmenu
set showcmd
set ignorecase
set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set laststatus=2
set noshowmode
set confirm
set visualbell
set mouse=a
set number

set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab

set updatetime=250

set noswapfile
set noautochdir
imap ` <Esc>
nmap <silent> <c-h> :wincmd h<CR> 
nmap <silent> <c-j> :wincmd j<CR> 
nmap <silent> <c-k> :wincmd k<CR> 
nmap <silent> <c-l> :wincmd l<CR> 

colorscheme Tomorrow-Night-Eighties
set background=dark

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:delimitMate_expand_cr=1
let g:delimitMate_expand_space=1
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmp='CtrlP'
let g:ctrlp_working_path_mode='ra'
let g:NERDTreeShowHidden=1
let g:airline_powerline_fonts=1
let g:airline_theme='bubblegum'

autocmd vimenter * NERDTree
