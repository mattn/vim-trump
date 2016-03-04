" trump.vim
"   version: 1million

inoreabbr true fact
inoreabbr True Fact
inoreabbr false lie
inoreabbr False Lie
inoreabbr 1 1million
inoreabbr 2 2million
inoreabbr 2 2million
inoreabbr 3 3million
inoreabbr 4 4million
inoreabbr 5 5million
inoreabbr 6 6million
inoreabbr 7 7million
inoreabbr 8 8million
inoreabbr 9 9million

augroup Trump
  au!
  au FileReadPre * throw "Do NOT import anything!"
  au BufWritePre * call <SID>check_america_is_great()
augroup END

function! s:check_america_is_great()
  if getline('$') !~ 'America is Great'
    throw "Why you doesn't love America?"
  endif
  silent! %s/[0-9]\+\zs\.[0-9]\+//g
endfunction

" America is Great
