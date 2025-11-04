vim9script
 
compiler javac

def Compile()
    w
    cd %:p:h
    Cmd javac % && java %:r
    cd -
enddef

nnoremap <buffer> <silent> <c-c>  <ScriptCmd>Compile()<Cr>
inoremap <buffer> <c-c>  /**/<left><left>
