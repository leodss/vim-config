function! ModifiedTime ()
  sil! 1/Modified Date  : \zs.*/s//\=strftime('%d-%m-%Y %H:%M:%S %z(%Z)')/
endfunction

function! NewFileUpdate ()
  sil! 1/Created Date   : \zs.*/s//\=strftime('%d-%m-%Y %H:%M:%S %z(%Z)')/
  sil! 1/File           : \zs.*/s//\=expand('%:t')/
  sil! %s/Module_name/\= expand("%:r")/
endfunction

autocmd BufNewFile *.v,*.sv,*.csh :call NewFileUpdate()
autocmd BufWritePre,FileWritePre,FileAppendPre *.v,*.sv,*.csh :call ModifiedTime()
