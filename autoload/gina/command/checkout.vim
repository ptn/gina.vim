let s:git_branches_dir = '.git/refs/heads'

function! gina#command#checkout#complete(lead, full_cmd, pos)
  let full_paths = split(globpath(s:git_branches_dir, '*'))
  " add 1 to remove the / too
  let start_removing_here = len(s:git_branches_dir) + 1
  let branches = map(full_paths, 'v:val[start_removing_here:]')
  return filter(branches, 'v:val =~ "^".a:lead')
endfunction

function! gina#command#checkout#call(idk, here, ...)
  silent execute 'Gina! ' . join(a:here.raw, ' ')
endfunction
