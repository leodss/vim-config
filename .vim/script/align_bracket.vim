function! AlignBrackets()
  execute "'<,'>Tabularize /("
  execute "'<,'>Tabularize /)/"
endfunction

command! -range=% AlignBrackets call AlignBrackets()
