" Nick's K-Rad vimrc - MacVim version
" Last Updated: Fri Feb 16 21:05:46 2018
" NOTES: Installing Powerline
" Download the Inconsolata for Powerline font from here:
" https://github.com/powerline/fonts/blob/master/Inconsolata/Inconsolata%20for%20Powerline.otf
" On macOS:
" $ brew install python
" $ pip install --user powerline-status
" PLUGINS {{{
call plug#begin()
Plug 'preservim/NERDTree'
Plug 'preservim/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'vim-scripts/EasyAccents'
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-IndentConsistencyCop'
Plug 'inkarkat/vim-IndentConsistencyCopAutoCmds'
Plug 'vim-scripts/Yow'
call plug#end()
" }}}

" Set various options {{{
set nocompatible
syntax on
"set backup
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
colo solarized
"}}}

" For MacVim GUI, set the following options {{{
if has("gui_macvim")
	set guiheadroom=20
	set guifont=Inconsolata\ for\ Powerline:h18
    set guioptions+=T
    if exists("+lines")
        set lines=30
    endif
    if exists("+columns")
        set columns=108
    endif
    "Transmit
    "amenu icon=/Users/nickca/.vim/bitmaps/transmit.png ToolBar.transmit :FTPSync<CR>
    "tmenu ToolBar.transmit FTP Sync with Transmit.
    " Menu bar
    "menu Tools.Transmit\ Sync :FTPSync<CR>
    "tmenu Tools.Transmit\ Sync FTP Sync with Transmit.
endif
" }}}
" For Gnome (Linux) GUI, set the following options {{{
if has("gui_gnome")
	set guiheadroom=20
	set guifont=Inconsolata\ for\ Powerline\ 14
    "set guioptions-=T
    if exists("+lines")
        set lines=30
    endif
    if exists("+columns")
        set columns=108
    endif
endif
" }}}

" Menus and Toolbar {{{
"menu Arduino.Make :!ARDUINO_DIR="/usr/share/arduino" ARDMK_DIR="/usr" AVR_TOOLS_DIR="/usr" make<CR>
"menu Arduino.Make\ Clean :!ARDUINO_DIR="/usr/share/arduino" ARDMK_DIR="/usr" AVR_TOOLS_DIR="/usr" make clean<CR>
"menu Arduino.Upload :!ARDUINO_DIR="/usr/share/arduino" ARDMK_DIR="/usr" AVR_TOOLS_DIR="/usr" make upload<CR>
"menu Arduino.Compile\ &\ Upload :!ARDUINO_DIR="/usr/share/arduino" ARDMK_DIR="/usr" AVR_TOOLS_DIR="/usr" make && make upload<CR>

"amenu <silent> icon=/home/nickca/.vim/bitmaps/compile.png ToolBar.compile :!ARDUINO_DIR="/usr/share/arduino" ARDMK_DIR="/usr" AVR_TOOLS_DIR="/usr" make<CR>
"tmenu ToolBar.compile Arduino compile
"amenu <silent> icon=/home/nickca/.vim/bitmaps/upload.png ToolBar.upload :!ARDUINO_DIR="/usr/share/arduino" ARDMK_DIR="/usr" AVR_TOOLS_DIR="/usr" make upload<CR>
"tmenu ToolBar.upload Arduino upload

"menu XMonad.Recompile :!xmonad --recompile<CR>
"menu XMonad.Restart :!xmonad --restart<CR>

" Toolbar
" NERD Comment
amenu <silent> icon=/Users/nickca/.vim/bitmaps/comment.png ToolBar.comment ,cs<CR>
tmenu ToolBar.comment Comment out line/selection
amenu <silent> icon=/Users/nickca/.vim/bitmaps/uncomment.png ToolBar.uncomment ,cu<CR>
tmenu ToolBar.uncomment Uncomment line/selection

amenu ToolBar.-sep3- <Nop>

"New Tab
amenu <silent> icon=/Users/nickca/.vim/bitmaps/newtab.png ToolBar.newtab :tabnew<CR>
tmenu ToolBar.newtab Open a new tab.
"NERD Tree
amenu <silent> icon=/Users/nickca/.vim/bitmaps/nerdtree.png ToolBar.nerdtree :NERDTree<CR>
tmenu ToolBar.nerdtree Open a nerdtree.
"Restore Syntax
amenu <silent> icon=/Users/nickca/.vim/bitmaps/syntaxon.png ToolBar.syntaxon :syntax on<CR>
tmenu ToolBar.syntaxon Restore syntax color (after netrw save)
"}}}

" Custom status bar {{{
set laststatus=2
"set statusline=%t\ %1*%m%*%r%h%w\ [Format=%{&ff}]\ [Type=%Y]\ [A=\%03.3b/H=\%02.2B]%=%-14.(Pos=%l,%c%V%)\ [%p%%/%P]
"set statusline=%t\ %1*%m%*%r%h%w\ [Buf#=%n]\ [%Y/%{&ff}]\ \t%{ShowTab()}\ [A=\%03.3b/H=\%02.2B]%=%-14.(Pos=%l,%c%V\ E:%{eclim#project#util#ProjectStatusLine()}%)\ [%p%%/%P]
"hi User1 term=inverse,bold gui=inverse,bold ctermfg=Red guifg=Red
"Switched to Powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
" }}}

" Mappings {{{
" Normal mode only: Ctrl+T opens tab, Ctrl+N navigates tabs
nnoremap <silent> <C-T> :tabnew<CR>
nnoremap <silent> <C-N> :tabnext<CR>
" Normal mode only: Space pages down
nnoremap <SPACE> <C-F>
" Insert mode only: Ctrl+Space invokes omnicomplete
" clashes w/LaunchBar on Mac
"if has("gui_running")
"	inoremap <C-SPACE> <C-X><C-O>
"else
"	inoremap <Nul> <C-X><C-O>
"endif
"}}}

" Autocommands {{{
" Source .vimrc after saving
"au BufWritePost ~/.vimrc so ~/.vimrc
" If no omnifunc exists, load syntax completion
au Filetype *
	\ if &omnifunc == "" |
	\		setlocal omnifunc=syntaxcomplete#Complete |
	\ endif
" Update 'Last Updated' date on write
au BufWrite * ks|call DateRev()|'s

" arduino
"autocmd! BufRead *.ino setlocal makeprg=ARDUINO_DIR=\"/usr/share/arduino\"\ ARDMK_DIR=\"/usr\"\ AVR_TOOLS_DIR=\"/usr\"\ make
"autocmd! BufRead *.pde setlocal makeprg=ARDUINO_DIR=\"/usr/share/arduino\"\ ARDMK_DIR=\"/usr\"\ AVR_TOOLS_DIR=\"/usr\"\ make
"autocmd BufNewFile,BufRead *.pde setlocal ft=arduino
"autocmd BufNewFile,BufRead *.ino setlocal ft=arduino


" make directory of file the working dir
autocmd BufEnter * silent! lcd %:p:h
"}}}

" Python {{{
python << EOF
# Essential imports
import os
import sys
import vim
# Fix a bug in MacVim
def reversed(x):
   return x[::-1]
# Set path to include python system libs
#for p in sys.path:
#	if os.path.isdir(p):
#		vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
EOF
"}}}

" Command mappings {{{
" Insert a 'Lorem ipsum' on the current line
com! Lorem py vim.current.line = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
com! UpdatePlugins !~/.vim/update_plugins.sh
"}}}

" Functions {{{
" Get and operate on visual selection, just an example {{{
"func! GetVis()
"python << EOF
"b = vim.current.buffer
"start_row, start_col = b.mark("<")
"end_row, end_col = b.mark(">")
"if start_row == end_row:
"    print b[start_row-1][start_col:end_col+1]
"else:
"    s = [ b[start_row-1][start_col:] ]
"    for l in b[start_row:end_row-2]:
"        s.append(l)
"    s.append(b[end_row-1][:end_col+1])
"    print "\n".join(s)
"EOF
"endfunc
" }}}

" Function to reformat date on current line (by itself) using Python {{{
func! RFDate(fmt_o,fmt_n)
python << EOF
from datetime import datetime,date,time
b = vim.current.buffer
start_row, start_col = b.mark("<")
end_row, end_col = b.mark(">")
if start_row == end_row:
    orig_date = b[start_row-1][start_col:end_col+1]
else:
    s = [ b[start_row-1][start_col:] ]
    for l in b[start_row:end_row-2]:
        s.append(l)
    s.append(b[end_row-1][:end_col+1])
    orig_date = "\n".join(s)
fmt_old = '%s' % vim.eval("a:fmt_o")
fmt_new = '%s' % vim.eval("a:fmt_n")
dt = datetime.strptime(orig_date,fmt_old)
vim.command("normal d$")
vim.current.line = vim.current.line + "," + dt.strftime(fmt_new)
EOF
endfunc
"}}}

" Function to insert a template for a new HTML (XHTML Transitional) file {{{
" Arguments are (page title,stylesheet,external javascript), title required
func! HTMLTemp(title, ...)
python << EOF
from datetime import datetime,date,time
d = datetime.now()
args = []
for i in range(1, int(vim.eval("a:0")) + 1):
	args.append(vim.eval("a:{%d}" % i))
template = """<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <meta http-equiv="Content-Language" content="en-us" />
        <meta name="author" content="Nick Caccamisi" />
        <meta name="generator" content="Vim 7" />
        <meta name="revised" content="%s" />
        <title>%s</title>
""" % (d.strftime("%c"),vim.eval("a:title"))
if len(args):
	if len(args) == 1:
		template += """        <link rel="stylesheet" href="%s" type="text/css" />
""" % args[0]
	elif len(args) == 2:
		template += """        <link rel="stylesheet" href="%s" type="text/css" />
""" % args[0]
		template += """        <script src="%s" type="text/javascript"></script>
""" % args[1]
template += """    </head>
    <body>
    </body>
</html>"""

for line in reversed(template.splitlines()):
	vim.current.range.append(line.rstrip())
EOF
endfunc
com! -nargs=+ HTMLTemplate call HTMLTemp(<f-args>)
" }}}

" Function to update 'Last Updated' tag {{{
" Search first 15 lines for 'Last Updated: ' (generic), '__date__ = ' (Python) or a 'revised' metatag (HTML).
func! DateRev()
	if &modified
		if line("$") > 15
			let l = 15
		else
			let l = line("$")
		endif
		let time = strftime("%c")
		if &ft == "python"
			exe "1," . l . "g/Last Updated: /s/Last Updated: .*/Last Updated: " . time . "/"
			exe "1," . l . "g/__date__ = /s/__date__ = .*/__date__ = '" . time . "'/"
		elseif &ft == "html"
			exe "1," . l . 's/<meta name="revised" content=".*/<meta name="revised" content="' . time . '" \/>/'
		else
			exe "1," . l . "g/Last Updated: /s/Last Updated: .*/Last Updated: " . time . "/"
		endif
	endif
endfunc
" }}}

" Function to insert a template for a new Python file {{{
func! PyTemp()
python << EOF
from datetime import datetime,date,time
d = datetime.now()
dt = d.strftime("%c")
fna = vim.current.buffer.name.split("/")
fn = fna[len(fna) - 1]
template = """
#!/usr/bin/python
# %s: Description here
# Last Updated: %s
__author__ = 'Nick Caccamisi'
__date__ = '%s'

# Imports

if __name__ == "__main__":
""" % (fn,dt,dt)
for line in reversed(template.splitlines()):
	vim.current.range.append(line.rstrip())
EOF
endfunc
com! PyTemplate call PyTemp()
" }}}

" Function to auto-add templates for Python classes {{{
func! PyNC(name, ...)
python << EOF
append = vim.current.range.append
args = []
for i in range(1, int(vim.eval("a:0")) + 1):
	args.append(vim.eval("a:{%d}" % i))

append("class %s:" % vim.eval("a:name"))
init = "    def __init__ (self"
for arg in args:
	init += ", %s" % arg
append(init + "):")
for arg in args:
	append("        self.%s = %s" % (arg, arg))
EOF
endfunc
com! -nargs=+ PyNewClass call PyNC(<f-args>)
" }}}

" Function to auto-add templates for Python class methods {{{
func! PyMeth(name, ...)
python << EOF
append = vim.current.range.append
args = []
for i in range(1, int(vim.eval("a:0")) + 1):
	args.append(vim.eval("a:{%d}" % i))

method_s = "    def %s (self" % vim.eval("a:name")
for arg in args:
	method_s += ", %s" % arg
method_s += "):"
append(method_s)
EOF
endfunc
com! -nargs=+ PyNewMethod call PyMeth(<f-args>)
" }}}

" Function to initiate Transmit sync via AppleScript (Mac Only!) {{{
" Lots of applications for calling arbitrary AppleScript this way...
"func! TransmitSync()
"    let str = system("osascript" , "tell application \"Transmit\"\n\ttell document 1\n\t\ttell current session\n\t\t\tsynchronize direction upload files method mirror automatically determine time offset true\n\t\tend tell\n\tend tell\nend tell")
"    echo "osascript response: " . str
"endfunc
"com! FTPSync call TransmitSync()
" }}}

" show indent level {{{
" http://vim.wikia.com/wiki/VimTip477
func! ShowTab()
    let TabLevel = (indent('.') / &ts )
    if TabLevel == 0
        let TabLevel='*'
    endif
    return TabLevel
endfunc
" }}}
"}}}
