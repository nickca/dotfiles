set nocompatible

" Plugins {{{
call plug#begin(stdpath('data') . '\plugged') 
Plug 'dracula/vim'
Plug 'preservim/NERDTree'
Plug 'vim-scripts/EasyAccents'
Plug 'vim-scripts/Yow'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jayli/vim-easycomplete'
Plug 'tpope/vim-commentary'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'rakr/vim-one'
Plug 'sophacles/vim-processing'
Plug 'supercollider/scvim'
call plug#end()
" }}}

" Set various options {{{
syntax on
set foldmethod=marker
set incsearch
set ignorecase
set smartcase
set gdefault
set showmatch
set showcmd
set wildmenu
set nowrap
set textwidth=80
set formatoptions=qrn12
filetype plugin indent on
" Default Tab/Indent options
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=0
set smarttab
set smartindent
set autoindent
set expandtab
set number
colo dracula
"}}}

set guifont=Source\ Code\ Pro\ for\ Powerline:h11

nnoremap <silent> <C-T> :tabnew<CR>
nnoremap <silent> <C-N> :tabNext<CR>
