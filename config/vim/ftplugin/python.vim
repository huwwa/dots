vim9script

def CompileAndRun()
    w
    cd %:p:h
    Cmd python %
    cd -
enddef

nmap <buffer><silent><leader>. <ScriptCmd>CompileAndRun()<cr>
