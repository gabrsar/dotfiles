 fu! HorRuler()
    setl nowrap scrollbind scrollopt+=hor
    abo 2sp +enew
    call setline(2,repeat('123456789*',100))
    call setline(1,repeat('123456789*',10))
    :1s/./         &/g
    let &l:stl="%#Normal#".repeat(' ',winwidth(0))
    setl scrollbind nomod buftype=nofile nowrap winfixheight
    wincmd p
endfu
com! HorizontalRuler :call HorRuler() 
