function! gina#command#checkout#complete(...)
  return call(function('gina#complete#commit#branch'), a:000)
endfunction

" the point of this command is the autocomplete
function! gina#command#checkout#call(...)
  return call(function('gina#command#_raw#call'), a:000)
endfunction
