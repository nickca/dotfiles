" Indents = 4 spaces, as per Python custom
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=0
" Expand tabs to spaces
setlocal expandtab
" Make sure comments match indent level
setlocal indentkeys+=0#
setlocal makeprg=pychecker\ --only\ %
"setlocal tags+=~/.vim/tags/python.ctags
setlocal omnifunc=pythoncomplete#Complete
