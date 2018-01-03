function! s:FTSetHH()
  setlocal filetype=hh
  runtime! syntax/php.vim
  setlocal omnifunc=LanguageClient#complete
endfunction

function! s:FTDetectHH()
  if getline(1) =~ '^<?hh'
    call s:FTSetHH()
  elseif getline(1) =~ '^#!\.\+hhvm' && getline(2) =~ '^<?hh'
    call s:FTSetHH()
  endif
endfunction

au! BufNewFile,BufRead *.php,*.hh call s:FTDetectHH()
