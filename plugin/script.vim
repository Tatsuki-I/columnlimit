function! ColumnLimit(clenable)
  if (a:clenable == 1)
    execute "set colorcolumn=80"
    execute "highlight link OverLength Error"
    execute "match OverLength /\%>80v.\+/"
  else
    execute "set colorcolumn=0"
    execute "highlight link OverLength NONE"
    execute "match OverLength /\%>80v.\+/"
  endif
endfunction

command! CLEnable call ColumnLimit(1)
command! CLDisable call ColumnLimit(0)
