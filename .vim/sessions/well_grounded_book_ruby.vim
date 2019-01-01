" ~/.vim/sessions/well_grounded_book_ruby.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 18 November 2018 at 15:26:57.
" Open this file in Vim and run :source % to restore your session.

if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'gruvbox' | colorscheme gruvbox | endif
call setqflist([{'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': '/Users/cristofher/Desktop/practice/vim_ruby_generate/doc/ruby_generate.txt', 'text': '"~/Desktop/practice/vim_generate/test.vim" 0L, 0C'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': '/Users/cristofher/Desktop/practice/vim_ruby_generate/doc/ruby_generate.txt', 'text': '"~/.vim/vim_settings/functions.vim" 195L, 5244C'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': '/Users/cristofher/Desktop/practice/vim_ruby_generate/doc/ruby_generate.txt', 'text': '"~/.vim/vim_settings/mapping.vim" 234L, 10137C'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': '/Users/cristofher/Desktop/practice/vim_ruby_generate/doc/ruby_generate.txt', 'text': '"~/.vimrc" 450L, 15949C'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': '/Users/cristofher/Desktop/practice/vim_ruby_generate/doc/ruby_generate.txt', 'text': '"/usr/local/Cellar/neovim/0.3.1/share/nvim/runtime/tutor/en/vim-01-beginner.tutor" 980L, 31728C'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': '/Users/cristofher/Desktop/practice/vim_ruby_generate/doc/ruby_generate.txt', 'text': '"~/.config/nvim/init.vim" 63L, 2213C'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': '/Users/cristofher/Desktop/practice/vim_ruby_generate/doc/ruby_generate.txt', 'text': '"~/Desktop/practice/Schedule.txt" 34L, 693C'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': '/Users/cristofher/Desktop/practice/vim_ruby_generate/doc/ruby_generate.txt', 'text': '"~/Desktop/practice/ruby/practic_inter.rb" 118L, 2804C'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': '/Users/cristofher/Desktop/practice/vim_ruby_generate/doc/ruby_generate.txt', 'text': 'session.vim 2.13.1: Opened global ''well_grounded_book_ruby'' session from ~/.vim/sessions/well_grounded_book_ruby.vim.'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': '/Users/cristofher/Desktop/practice/vim_ruby_generate/doc/ruby_generate.txt', 'text': 'Error detected while processing :'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': '/Users/cristofher/Desktop/practice/vim_ruby_generate/doc/ruby_generate.txt', 'text': 'E121: Undefined variable: test'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': '/Users/cristofher/Desktop/practice/vim_ruby_generate/doc/ruby_generate.txt', 'text': 'E15: Invalid expression: test'}])
let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Desktop/practice/ruby/well_grounded_rubist
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +288 ~/.vimrc
badd +21 term://.//12835:/usr/local/bin/zsh
badd +1 /usr/local/Cellar/neovim/0.3.1/share/nvim/runtime/tutor/en/vim-01-beginner.tutor
badd +21 ~/Desktop/practice/vim-ruby-generate/plugin/ruby_generate.vim
badd +1 ~/.vim/vim_settings/vimrc/looks.vim
badd +1 ~/.vim/vim_settings/vimrc/deoplete
badd +3 ~/.vim/vim_settings/vimrc/deoplete.vim
badd +6 ~/.vim/vim_settings/vimrc/nerdtree.vim
badd +8 ~/.vim/vim_settings/vimrc/ultisnips.vim
badd +1 ~/.vim/vim_settings/vimrc/sessions.vim
badd +1 ~/.vim/vim_settings/vimrc/ale.vim
badd +1 ~/.vim/vim_settings/vimrc/airline.vim
badd +1 ex_08.rb
argglobal
silent! argdel *
$argadd ex_08.rb
edit ~/.vimrc
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=3
setlocal nofen
let s:l = 281 - ((8 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
281
normal! 0
lcd ~/Desktop/practice/ruby/well_grounded_rubist
tabedit ~/.vim/vim_settings/vimrc/airline.vim
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 90) / 181)
exe 'vert 2resize ' . ((&columns * 149 + 90) / 181)
argglobal
enew
" file ~/Desktop/practice/ruby/well_grounded_rubist/NERD_tree_3
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=3
setlocal nofen
wincmd w
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=3
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Desktop/practice/ruby/well_grounded_rubist
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 90) / 181)
exe 'vert 2resize ' . ((&columns * 149 + 90) / 181)
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
tabnext 2
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Desktop/practice/ruby/well_grounded_rubist
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 40|vert 1resize 31|2resize 40|vert 2resize 149|
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
