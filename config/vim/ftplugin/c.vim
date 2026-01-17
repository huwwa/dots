vim9script

setlocal cinoptions=t0

def CompileAndRunAndRun()
    w
    cd %:p:h
    Cmd cc -ggdb -o %:r % && ./%:r
    cd -
enddef

nnoremap <buffer><silent><leader>.  <scriptcmd>CompileAndRunAndRun()<cr>
