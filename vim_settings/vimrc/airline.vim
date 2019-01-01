scriptencoding utf-8
set showtabline=2

let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#show_number = 2
let g:lightline#bufferline#unnamed     = '[No Name]'
let g:lightline#bufferline#enable_devicons = 1
let g:list = ['⓵ ', '⓶ ', '⓷ ', '⓸ ', '⓹ ', '⓺ ', '⓻ ', '⓼ ', '⓽ ', '⓾ ']
let g:lightline#ale#indicator_checking = ''
let g:lightline#ale#indicator_warnings = ' '
let g:lightline#ale#indicator_errors = '✘ '
" \            [ 'fileencoding', 'filetype', 'linter_status', 'linter_checking', 'linter_errors', 'linter_warnings' ]]
" \             [ 'gitbranch', 'readonly', 'fileNameMod', 'modified' ],
let g:lightline = {
      \ 'colorscheme': 'breezy',
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
			\ 'active': {
			\   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ],
      \           ],
      \   'right': [
      \              [ 'percent' ],
      \              [ 'filetype'] ,
      \              [ 'linter_checking', 'linter_errors', 'linter_warnings' ],
      \              [ 'lineinfo' ],
      \            ]
			\ },
			\ 'component_function': {
			\   'gitbranch': 'fugitive#head',
      \   'fileNameMod': 'LLfile',
      \   'filename': 'LightLineFilename',
      \   'cocstatus': 'coc#status'
			\ },
      \ 'component_type': {
      \   'readonly': 'error',
      \   'linter_checking': 'left',
      \   'linter_warnings': 'warning',
      \   'linter_errors': 'error',
      \    'buffers': 'tabsel',
      \ },
      \ 'component_expand': {
      \   'linter_checking': 'lightline#ale#checking',
      \   'linter_warnings': 'lightline#ale#warnings',
      \   'linter_errors': 'lightline#ale#errors',
      \   'buffers': 'lightline#bufferline#buffers',
      \   'statuslinetabs': 'LightlineStatuslineTabs',
      \ },
      \ 'tabline': {
      \   'left': [['buffers']],
      \   'right': [['close']],
      \ },
      \ 'component': {
      \   'close': ' BUFFERS  ﯇ ',
      \ },
      \ }

function! LightLineFilename()
  let fname = expand('%:t')
  return fname == '__Tag_List__' ? '' :
        \ fname == 'ControlP' ? '' :
        \ fname =~ 'NERD_tree' ?
        \   (exists('g:NERDTreeFileNode') &&
        \     has_key(g:NERDTreeFileNode.GetSelected(), 'path') ?
        \     g:NERDTreeFileNode.GetSelected().path.getLastPathComponent(0) :
        \     '') :
        \ '' != fname ? fname : '[No Name]'
endfunction

" function! ALEGetStatusLine() abort
"   return ale#statusline#Status()
" endfunction
"
" function! LightLineAle()
"   if winwidth(0) > 90 && &ft !~? s:except_ft && exists("*ALEGetStatusLine")
"     return ALEGetStatusLine()
"   endif
" endfunction
"
" augroup UpdateAleLightLine
"   autocmd!
"   autocmd User ALELint call lightline#update()
" augroup END

function! LLfile()
  return ('' != expand('%:t') ? WebDevIconsGetFileTypeSymbol(). ' tabline: ' . expand('%:t') : '[No Name]') .
        \ ('' != LLtype() ? ' '.LLtype() : '')
endfunction

function! LLtype()
  if &readonly || !&modifiable
    return ''
  else
    return ''
  endif
endfunction

" function! LightlineStatuslineTabs() abort
"   let l:n = min([max([winwidth(0) / 40, 1]), 8])
"
"   return 'TABS  '. join(map(range(1, l:n),
"         \ " g:list[v:key] . ' ' . lightline#tab#filename(v:val)
"         \ . (v:val == tabpagenr() ? ' ✹' : '')
"         \ . ' ' "), ' ')
" endfunction
