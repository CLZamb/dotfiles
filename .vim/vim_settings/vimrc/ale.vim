scriptencoding utf-8
" set completeopt=menu,menuone,preview,noselect,noinsert
" Set this variable to 1 to fix files when you save them.
"
let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'ruby': ['rubocop'],
      \ 'cpp': ['clang-format'],
      \ 'java': ['google_java_format'],
      \}
" Save and reopen last session
let g:ale_fix_on_save = 1
" Ale linting fixing
let g:ale_linters = {
      \'ruby': ['rubocop', 'solargraph', 'rails_best_practices' ],
      \'cpp': ['ccls', 'clang', 'clangcheck', 'clangd', 'clangtidy', 'clazy', 'cppcheck', 'cpplint', 'cquery', 'flawfinder' ],
      \'java': ['javac', 'javalsp', 'pmd']
      \}
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

"let g:ale_sign_error = '﯀'
"let g:ale_sign_warning = '黎'
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
" this line fixes autcompletition with ale
"let g:ale_completion_delay = 400
"hi ale_error   cterm=None ctermfg=124 ctermbg=237
"hi ale_warning cterm=None ctermfg=214 ctermbg=237
"
" let g:EclimJavaValidate = 0
autocmd FileType java let g:ale_java_javac_classpath=eclim#Execute('-command java_classpath -p ' . eclim#project#util#GetCurrentProjectName())
