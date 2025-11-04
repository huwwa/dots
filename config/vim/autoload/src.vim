vim9script

export def Help(fname: string)
    set path+=~/.local/musl-1.2.5/src/**/
    try
	silent exe "sfind " .. fname .. '.c'
	setlocal buftype=help nomodifiable
    catch
	    echohl ErrorMsg | echom 'NOT FOUND <: ' .. expand(fname) .. '.c' | echohl none
    endtry
    set path-=~/.local/musl-1.2.5/src/**/
enddef
