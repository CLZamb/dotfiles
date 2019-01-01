" ~/.vim/sessions/java_design_patterns.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 12 December 2018 at 11:32:56.
" Open this file in Vim and run :source % to restore your session.

if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'onedark' | colorscheme onedark | endif
call setqflist([{'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'AddapterPattern/AddapterPattern/DuckTestDrive.java', 'text': '[WARNING] Using platform encoding (UTF-8 actually) to copy filtered resources, i.e. build is platform dependent!'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'AddapterPattern/AddapterPattern/DuckTestDrive.java', 'text': '[WARNING] File encoding has not been set, using platform encoding UTF-8, i.e. build is platform dependent!'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'AddapterPattern/AddapterPattern/DuckTestDrive.java', 'text': '[ERROR] COMPILATION ERROR : '}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'AddapterPattern/AddapterPattern/DuckTestDrive.java', 'text': '[ERROR] Source option 1.5 is no longer supported. Use 1.6 or later.'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'AddapterPattern/AddapterPattern/DuckTestDrive.java', 'text': '[ERROR] Target option 1.5 is no longer supported. Use 1.6 or later.'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'AddapterPattern/AddapterPattern/DuckTestDrive.java', 'text': '[ERROR] Failed to execute goal org.apache.maven.plugins:maven-compiler-plugin:3.1:compile (default-compile) on project AddapterPattern-app: Compilation failure: Compilation failure: '}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'AddapterPattern/AddapterPattern/DuckTestDrive.java', 'text': '[ERROR] Source option 1.5 is no longer supported. Use 1.6 or later.'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'AddapterPattern/AddapterPattern/DuckTestDrive.java', 'text': '[ERROR] Target option 1.5 is no longer supported. Use 1.6 or later.'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'AddapterPattern/AddapterPattern/DuckTestDrive.java', 'text': '[ERROR] -> [Help 1]'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'AddapterPattern/AddapterPattern/DuckTestDrive.java', 'text': '[ERROR] '}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'AddapterPattern/AddapterPattern/DuckTestDrive.java', 'text': '[ERROR] To see the full stack trace of the errors, re-run Maven with the -e switch.'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'AddapterPattern/AddapterPattern/DuckTestDrive.java', 'text': '[ERROR] Re-run Maven using the -X switch to enable full debug logging.'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'AddapterPattern/AddapterPattern/DuckTestDrive.java', 'text': '[ERROR] '}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'AddapterPattern/AddapterPattern/DuckTestDrive.java', 'text': '[ERROR] For more information about the errors and possible solutions, please read the following articles:'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'AddapterPattern/AddapterPattern/DuckTestDrive.java', 'text': '[ERROR] [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/MojoFailureException'}])
let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Desktop/practice/java/DesignPatterns/AddapterPattern/src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/Desktop/44573221_349603209145253_4022745302342565888_n.jpg
badd +1 ~/Desktop/practice/java/DesignPatterns
argglobal
silent! argdel *
$argadd ~/Desktop/practice/java/DesignPatterns
set splitbelow splitright
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
enew
" file NERD_tree_2
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=3
setlocal nofen
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOFc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 1
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Desktop/practice/java/DesignPatterns
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1wincmd w
tabnext 1
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
