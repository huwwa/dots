vim9script

compiler javac

def CompileAndRun()
    w
    cd %:p:h
    Cmd javac % && java %:r
    cd -
enddef

nmap <scriptcmd>CompileAndRun()<cr>
