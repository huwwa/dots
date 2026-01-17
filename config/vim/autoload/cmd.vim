vim9script

var last_buffer: number = -1

def OnExit(job: job, status: number)
    term_wait(last_buffer)
    const lines = getbufline(last_buffer, 1, '$')
    if status != 0 || lines == ['']
        echomsg '[Process exited ' .. status .. ']'
    endif
enddef

export def NewCmd(args: string)
    const name = '!' .. args
    const cmd = [&shell, '-c', args]

    if bufexists(last_buffer)
        execute 'bwipeout! ' .. last_buffer
    endif
    last_buffer = term_start(cmd, {'exit_cb': OnExit, 'term_name': name})
enddef
