function! TabeditFile()
  call inputsave()
  let l:fname = input('Find File: ', '', 'file_in_path')
  call inputrestore()
  if exists('l:fname') && !empty(l:fname)
    execute 'tabe ' . l:fname
  else
    echo 'Invalid file name'
  endif
endfunction

" fzf functions commands
" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
      \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

autocmd TermOpen * setlocal statusline=%{b:term_title}

augroup runIt:
  autocmd filetype cpp    nnoremap <silent> <buffer> <leader>r :w <bar> make -j9 <bar>vert copen <bar>!./main <cr>
  autocmd filetype c      nnoremap <silent> <buffer> <leader>r :w <bar> !gcc -std=c99 -lm % -o %:p:h/%:t:r.out && ./%:r.out<CR>
  autocmd filetype java   nnoremap <silent> <buffer> <leader>r :w <bar> Java %<CR>
  autocmd filetype python nnoremap <silent> <buffer> <leader>r :w <bar> !python % <CR>
  autocmd filetype perl   nnoremap <silent> <buffer> <leader>r :w <bar> !perl % <CR>
  autocmd filetype go     nnoremap <silent> <buffer> <leader>r :w <bar> !go build % && ./%:p <CR>
  autocmd filetype ruby   nnoremap <silent> <buffer> <leader>r :w <bar> rubyfile %<CR>
augroup END

function! Fzf_dev()
  let $FZF_DEFAULT_COMMAND = 'rg --hidden -l ""'
  function! s:files()
    let files = split(system($FZF_DEFAULT_COMMAND), '\n')
    return s:prepend_icon(files)
  endfunction

  function! s:prepend_icon(candidates)
    let result = []
    for candidate in a:candidates
      let filename = fnamemodify(candidate, ':p:t')
      let icon = WebDevIconsGetFileTypeSymbol(filename, isdirectory(filename))
      call add(result, printf('%s %s', icon, candidate))
    endfor

    return result
  endfunction

  function! s:edit_file(item)
    let parts = split(a:item, ' ')
    let file_path = get(parts, 1, '')
    execute 'silent e' file_path
  endfunction

  call fzf#run({
        \ 'source': <sid>files(),
        \ 'sink':   function('s:edit_file'),
        \ 'options': '-m -x +s',
        \ 'down':    '40%' })
endfunction
