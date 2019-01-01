" The mapleader has to be set before vundle starts loading all
" the plugins.
let g:mapleader = "\<Space>"
"let g:testleader = 'd'
" let g:maplocalleader = ','
"""""""""""""""""""""""""""""""""""""
" Mappings configuration
"""""""""""""""""""""""""""""""""""""
nnoremap <f5> :<c-u>make %:r && ./%:r<cr>
" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>
" Move the current line up and down in normal mode
nmap _ ddkP
nmap - ddp
nnoremap vv :vertical split<cr>
nnoremap vvf :vertical split<space>
nnoremap ss :split<cr>
nnoremap ssf :split<space>
vmap ˚ <Plug>MoveBlockUp
vmap ∆ <Plug>MoveBlockDown
vmap ˙ <Plug>MoveBlockLeft
vmap ¬ <Plug>MoveBlockRight
" Define user commands for updating/cleaning the plugins.
" Each of them loads minpac, reloads .vimrc to register the
" information of plugins, then performs the task.
command! PackagerInstall call PackagerInit() | call packager#install()
command! PackagerUpdate call PackagerInit()  | call packager#update()
command! PackagerClean call PackagerInit()   | call packager#clean()
command! PackagerStatus call PackagerInit()  | call packager#status()
" =======================================================
" Which key plugin configuration
" =======================================================
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
" nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
" By default timeoutlen is 1000 ms
set timeoutlen=350
" Define prefix dictionary
let g:which_key_map =  {}
call which_key#register('<Space>', 'g:which_key_map')
nnoremap <leader>T :tabedit term://zsh<cr>
let g:which_key_map['T'] = 'open terminal in a new tab'
nmap <leader>a ysiw'

" =======================================================
" Leader Mappings configuration
" =======================================================
nnoremap <silent> <Leader>/ :noh<CR>
nnoremap <silent> ¬ :tabnext<cr>
nnoremap <silent> ˙ :tabprevious<cr>
if has('nvim')
  tnoremap <silent>† <c-\><c-n>
  tnoremap <C-h> <c-\><c-n><c-w>h
  tnoremap <C-j> <c-\><c-n><c-w>j
  tnoremap <C-k> <c-\><c-n><c-w>k
  tnoremap <C-l> <c-\><c-n><c-w>l
endif

" Pane Resize
nnoremap <silent> <Leader>+ :exe "vertical resize " . (winheight(0) + 5)<CR>
nnoremap <silent> <Leader>- :exe "vertical resize " . (winheight(0) - 5)<CR>
let g:which_key_map['+'] = 'v resize +5'
let g:which_key_map['-'] = 'v resize +5'
let g:which_key_map['a'] = 'add single quotes'
" Prompt for a command to run
nnoremap <leader>R :Ranger<CR>
let g:which_key_map['R'] = 'ranger'
" vim sourround
" noremap <silent> <leader>n :NERDTreeToggle<CR>
" noremap <silent> <leader>m :TagbarToggle<CR>
" let g:which_key_map.n = 'Toggle Nerd Tree Pane'
" let g:which_key_map.m = 'Toggle Tagbar Pane'
" Toggle Targbar and NerdTree
noremap <silent> <leader>n :NERDTreeToggle<CR>
noremap <silent> <leader>B :TagbarToggle<CR>
let g:which_key_map.n = 'toggle nerd tree pane'
let g:which_key_map.B = 'toggle tagbar pane'
vmap <leader>p  <Plug>(coc-format-selected)
" =======================================================
" Create menus based on existing mappings
" =======================================================
nmap <silent> <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <silent> <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <silent> <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <silent> <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <silent> <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <silent> <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <silent> <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <silent> <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <silent> <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <silent> <Leader>0 <Plug>lightline#bufferline#go(10)
nmap <silent> <Leader>q :Bclose<CR>
let g:which_key_map.1 = 'buffer 1'
let g:which_key_map.2 = 'buffer 2'
let g:which_key_map.3 = 'buffer 3'
let g:which_key_map.4 = 'buffer 4'
let g:which_key_map.5 = 'buffer 5'
let g:which_key_map.6 = 'buffer 6'
let g:which_key_map.7 = 'buffer 7'
let g:which_key_map.8 = 'buffer 8'
let g:which_key_map.9 = 'buffer 9'
let g:which_key_map.0 = 'buffer 0'

" You can pass a descriptive text to an existing mapping.
" excuting commands
" EasyMotion mapping
let  g:which_key_map[' '] = {
      \ 'name' : '+Easymotion ' ,
      \ 'f' : ['<plug>(easymotion-prefix)f' , 'find {char} to the right'],
      \ 'F' : ['<plug>(easymotion-prefix)F' , 'find {char} to the left'],
      \ 't' : ['<plug>(easymotion-prefix)t' , 'till before the {char} to the right'],
      \ 'T' : ['<plug>(easymotion-prefix)T' , 'till after the {char} to the left'],
      \ 'w' : ['<plug>(easymotion-prefix)w' , 'beginning of word forward'],
      \ 'W' : ['<plug>(easymotion-prefix)W' , 'beginning of Word forward'],
      \ 'b' : ['<plug>(easymotion-prefix)b' , 'beginning of word backward'],
      \ 'B' : ['<plug>(easymotion-prefix)B' , 'beginning of Word backward'],
      \ 'e' : ['<plug>(easymotion-prefix)e' , 'end of word forward'],
      \ 'E' : ['<plug>(easymotion-prefix)E' , 'end of Word forward'],
      \ 'g' : {
        \ 'name' : '+Backwards ' ,
        \ 'e' : ['<plug>(easymotion-prefix)ge' , 'end of word backward'],
        \ 'E' : ['<plug>(easymotion-prefix)gE' , 'end of Word backward'],
      \ },
      \ 'j' : ['<plug>(easymotion-prefix)j' , 'line downward'],
      \ 'k' : ['<plug>(easymotion-prefix)k' , 'line upward'],
      \ 'n' : ['<plug>(easymotion-prefix)n' , 'jump to latest "/" or "?" forward'],
      \ 'N' : ['<plug>(easymotion-prefix)N' , 'jump to latest "/" or "?" backward.'],
      \ 's' : ['<plug>(easymotion-prefix)s' , 'find(search) {char} forward and backward.'],
      \ }

" Packager mapping
let g:which_key_map['c'] = {
      \ 'name' : '+cocnvim ' ,
      \ 'f' : ['<plug>(coc-diagnostic-info)'     , 'diagnostic info'],
      \ 'n' : ['<plug>(coc-diagnostic-next)'     , 'diagnostic next'],
      \ 'p' : ['<plug>(coc-diagnostic-prev)'     , 'diagnostic prev'],
      \ 'd' : ['<plug>(coc-definition)'          , 'go to definition'],
      \ 'i' : ['<plug>(coc-implementation)'      , 'go to implementation'],
      \ 't' : ['<plug>(coc-type-definition)'     , 'go to type definition'],
      \ 'e' : ['<plug>(coc-references)'          , 'find references'],
      \ 's' : ['<plug>(coc-format-selected)'     , 'format selected'],
      \ 'm' : ['<plug>(coc-format)'              , 'format'],
      \ 'r' : ['<plug>(coc-rename)'              , 'rename'],
      \ 'c' : ['<plug>(coc-codeaction)'          , 'codeaction'],
      \ 'a' : ['<plug>(coc-codeaction-selected)' , 'codeaction seleted'],
      \ 'o' : ['<plug>(coc-openlink)'            , 'openlink'],
      \ 'l' : ['lopen'                           , 'Errors kick fix window'],
      \ }
" Tabedit mappings
let g:which_key_map['e'] = {
      \ 'name' : '+Tabedit ' ,
      \ 'f' : ['call TabeditFile()'                               , 'file'],
      \ 'e' : ['tabe'                                             , 'empty file'],
      \ 'v' : ['tabedit ~/.vimrc'                                 , 'vimrc'],
      \ 'm' : ['tabedit ~/.vim/vim_settings/mapping.vim'          , 'mappings'],
      \ 'a' : ['tabedit ~/.vim/vim_settings/autocmds.vim'         , 'autocommands'],
      \ 'b' : ['tabedit ~/.vim/vim_settings/abbreviation.vim'     , 'Abbreviations'],
      \ 'c' : ['tabedit ~/.vim/vim_settings/functions.vim'        , 'functions'],
      \ }
" Gitgutter mappings
let g:which_key_map['G'] = {
      \ 'name' : '+Git-Gutter',
      \ 'p' : ['GitGutterPreviewHunk' , 'preview hunk'],
      \ 's' : ['GitGutterStageHunk'   , 'staged hunk'],
      \ 'u' : ['GitGutterUndoHunk'    , 'undo hunk'],
      \ }
" tab mapping
let g:which_key_map['g'] = {
      \ 'name' : '+Generate ',
      \ 's' : ['GenerateSetter'       , 'setter'],
      \ 'g' : ['GenerateGetter'       , 'getter'],
      \ 'r' : ['GenerateReader'       , 'attr reader'],
      \ 'w' : ['GenerateWriter'       , 'attr writer'],
      \ 'a' : ['GenerateAccessor'     , 'attr accessor'],
      \ 'v' : ['GeneratePrivateVar'   , 'private var(s)'],
      \ 'n' : [":call CocAction('rename')"   , 'rename'],
      \ }
" Packager mapping
let g:which_key_map['p'] = {
      \ 'name' : '+Packager ' ,
      \ 'i' : ['PackagerInstall' , 'install'],
      \ 'u' : ['PackagerUpdate'  , 'update'],
      \ 'c' : ['PackagerClean'   , 'clean'],
      \ 's' : ['PackagerStatus'  , 'status'],
      \ }
" Source mappings
let g:which_key_map['s'] = {
      \ 'name' : '+Source ' ,
      \ 'v' : ['source ~/.vimrc'                                 , 'vimrc'],
      \ 'm' : ['source ~/.vim/vim_settings/mapping.vim'          , 'mappings'],
      \ 'a' : ['source ~/.vim/vim_settings/autocmds.vim'         , 'autocommands'],
      \ 'b' : ['source ~/.vim/vim_settings/abbreviation.vim'     , 'abbreviations'],
      \ 'f' : ['source ~/.vim/vim_settings/functions.vim'        , 'functions'],
      \ }
" RSpec mappings
let g:rspec_command = '!rspec --drb {spec}'

nmap <silent> <Leader>t  :RunCurrentSpecFile()<cr>
nmap <silent> <Leader>tn :RunNearestSpec()<cr>
nmap <silent> <Leader>tl :RunCurrentSpecFile()<cr>
nmap <silent> <Leader>ta :RunCurrentSpecFile()<cr>
let g:which_key_map.t  = 'RSpec File'
let g:which_key_map.tn = 'RSpec Nearest'
let g:which_key_map.tl = 'RSpec Last'
let g:which_key_map.ta = 'RSpec All'

" Sessions mappings
let g:which_key_map['S'] = {
      \ 'name' : '+Sessions ' ,
      \ 's' : ['SaveSession'   , 'saves current session'],
      \ 'o' : ['OpenSession'   , 'open a session'],
      \ 'r' : ['RestartVim'    , 'restart vim'],
      \ 'c' : ['CloseSession'  , 'close current session'],
      \ 'd' : ['DeleteSession' , 'delete any session'],
      \ 'v' : ['ViewSession'   , 'View Session'],
      \ 't' : {
        \ 'name' : '+Tab ',
        \ 'o' : ['OpenTabSession'   , 'open tab session'],
        \ 's' : ['SaveTabSession'   , 'save tab session'],
        \ 'a' : ['AppendTabSession' , 'append tab session'],
        \ 'c' : ['CloseTabSession'  , 'close tab session'],
      \ }
      \ }
" Packager mapping
let g:which_key_map['w'] = {
      \ 'name' : '+Windows ' ,
      \ 'd' : ['<C-W>c'    , 'delete-window'],
      \ '-' : ['<C-W>s'    , 'split-window-below'],
      \ '|' : ['<C-W>v'    , 'split-window-right'],
      \ '2' : ['<C-W>v'    , 'layout-double-columns'],
      \ 'H' : ['<C-W>5<'   , 'expand-window-left'],
      \ 'J' : ['resize +5' , 'expand-window-below'],
      \ 'L' : ['<C-W>5>'   , 'expand-window-right'],
      \ 'K' : ['resize -5' , 'expand-window-up'],
      \ '=' : ['<C-W>='    , 'balance-window'],
      \ 's' : ['<C-W>s'    , 'split-window-below'],
      \ 'v' : ['<C-W>v'    , 'split-window-below'],
      \ 'l' : ['<C-W>v<C-W>r'  ,'split-window-left'],
      \ '?' : ['Windows'   , 'fzf-window'],
      \ }
" Fzf mapping
nnoremap <silent><leader>f  :call Fzf_dev()<CR>
let g:which_key_map.f = 'fuzzy find files'
let g:which_key_map['z'] = {
      \ 'name' : '+Fzf ',
      \ 'g' : {
        \ 'name' : '+Git ',
        \ 'f' : ['GFiles'   , 'git files (git ls-files)'],
        \ '?' : ['GFiles?'  , 'git files (git status)'],
        \ 'c' : ['Commits'  , 'Git commits (requires fugitive.vim)'],
      \ },
      \ 'c' : ['Colors'     , 'color schemes'] ,
      \ 'a' : ['Ag'         , 'ag search result'],
      \ 'r' : ['Rg'         , 'rg search result'],
      \ 'b' : {
        \ 'name' : '+Buffers ',
        \ 'o' : ['Buffers'  , 'open buffers'],
        \ 'l' : ['lines'    , 'lines in loaded buffers'],
        \ 'c' : ['BLines'   , 'lines in the current buffer'],
        \ 't' : ['BTags'    , 'tags in the current buffer'],
        \ 'h' : ['History'  , 'v:oldfiles and open buffers'],
        \ 'g' : ['BCommits' , 'Git commits for the current buffer'] ,
      \ },
      \ 'k' : ['Marks'      , 'marks'],
      \ 'w' : ['Windows'    , 'windows'],
      \ 'l' : ['Locate'     , 'locate command output'],
			\ 'h' : {
			\ 'name' : '+History ',
				\ 'c' : ['History:' , 'command history'],
				\ 's' : ['History/' , 'search history'],
			\ },
			\ 's' : ['Snippets'   , 'snippets (UltiSnips)'],
      \ 'd' : ['Commands'   , 'commands'],
      \ 'm' : ['Maps'       , 'normal mode mapping'],
      \ 't' : ['Helptags'   , 'help tags'],
      \ 'p' : ['Filetypes'  , 'File types'],
      \ 'u' : ['FZFMru'     , 'MRU files'],
      \ }
