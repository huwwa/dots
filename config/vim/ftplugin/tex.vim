vim9script

compiler tex

def CompileAndRun()
    w
    cd %:p:h
    silent make
    cd -
    cwindow
    redraw!
enddef

def OnError(channel_name: channel, msg: string)
    echoerr msg
enddef

def Openpdf()
    const proc = "zathura"
    const opta = "-c"
    const optb = "~/.config/zathura/tex/"
    const optc = "--log-level=warning"
    const optd = expand('%:p:r') .. ".pdf"
    const opte = "--synctex-forward"
    const optf = line(".") .. ":" .. col(".") .. ":" .. expand('%:p')
    const cmd  = [proc, opta, optb, optc, optd, opte, optf]

    if !filereadable('master.tex')
        job_start(cmd, {"err_cb": OnError})
    else
        job_start([proc, opta, optb,  optc, "master.pdf", opte, optf], {"err_cb": OnError})
    endif
enddef

nmap <buffer><silent><leader>. <ScriptCmd>CompileAndRun()<Cr>
nmap <buffer><silent><leader>r <ScriptCmd>Openpdf()<Cr>
