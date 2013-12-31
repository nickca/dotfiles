" Nick's K-Rad vimrc - Minimal version for default OSX vim
" Last Updated: Sat May 16 05:55:10 2009
if !has("gui_macvim")
" Set various options {{{
set nocompatible
syntax on
"set backup
set foldmethod=marker
set incsearch
set showcmd
set wildmenu
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
" Don't load any plugins - we have MacVim GUI for that sort of thing
"set noloadplugins
"}}}

" Custom status bar {{{
set laststatus=2
"set statusline=%t\ %1*%m%*%r%h%w\ [Format=%{&ff}]\ [Type=%Y]\ [A=\%03.3b/H=\%02.2B]%=%-14.(Pos=%l,%c%V%)\ [%p%%/%P]
set statusline=%t\ %1*%m%*%r%h%w\ [Buf#=%n]\ [%Y/%{&ff}]\ [A=\%03.3b/H=\%02.2B]%=%-14.(Pos=%l,%c%V%)\ [%p%%/%P]
hi User1 term=inverse,bold gui=inverse,bold ctermfg=Red guifg=Red
" }}}

" Mappings {{{
" Normal mode only: Ctrl+T opens tab, Ctrl+N navigates tabs
nnoremap <silent> <C-T> :tabnew<CR>
nnoremap <silent> <C-N> :tabnext<CR>
" Normal mode only: Space pages down
nnoremap <SPACE> <C-F>
" Insert mode only: Ctrl+Space invokes omnicomplete
if has("gui_running")
	inoremap <C-SPACE> <C-X><C-O>
else
	inoremap <Nul> <C-X><C-O>
endif
"}}}
endif
