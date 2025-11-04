vim9script

comp gcc
setlocal shiftwidth=4
setlocal cinoptions=t0
setlocal textwidth=80

#colorscheme mine
set makeprg=cc\ -Wall\ -Wextra\ -o\ %:r\ %

def Compile()
    w
    cd %:p:h
    ter ++shell cc -Wall -Wextra -Wno-unused-parameter -o %:r % && ./%:r
    cd -
enddef

nnoremap <buffer><silent> <c-c>  <ScriptCmd>Compile()<cr>
imap <c-c> /**/<left><left>
