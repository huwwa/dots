vim9script

setlocal rnu

g:netrw_keepdir = 0
g:netrw_liststyle = 0
g:netrw_banner = 0
g:netrw_list_hide = '^\.[a-zA-z]\+'

nmap <buffer>q  :bd<cr>
nmap <buffer>.  <scriptcmd>SkipHidden()<cr>a
vmap <buffer>mf :norm mf<cr>
vmap <buffer>mm :norm mm<cr>
vmap <buffer>mt :norm mt<cr>

vmap <buffer>D mfD

def SkipHidden()
    if g:netrw_hide == 1
        g:netrw_hide = 2
    endif
enddef
