command! -nargs=+ -complete=shellcmdline Cmd silent call cmd#NewCmd(<q-args>)
nmap <leader>x :Cmd<space>
