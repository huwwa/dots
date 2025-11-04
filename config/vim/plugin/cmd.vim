let g:last_term_buffer = -1

augroup SingleTerminal
    autocmd!
    autocmd TerminalOpen * call s:HandleTerminalOpen()
augroup END

function! s:HandleTerminalOpen()
    let l:current_buffer = bufnr('%')

    if g:last_term_buffer != -1 && bufexists(g:last_term_buffer)
        execute 'bwipeout!' g:last_term_buffer
    endif

    let g:last_term_buffer = l:current_buffer
endfunction

nnoremap  <leader>x :ter
