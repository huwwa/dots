vim9script

setlocal cinoptions=t0

def CompileAndRun()
    w
    cd %:p:h
    Cmd cc -ggdb -o %:r % && ./%:r
    cd -
enddef

nmap <buffer><silent><leader>.  <scriptcmd>CompileAndRun()<cr>
