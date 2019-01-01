augroup file_group
    autocmd BufNewFile,BufRead *.html setlocal nowrap
augroup END

if !empty($MY_RUBY_HOME)
    let g:ruby_path = join(split(glob($MY_RUBY_HOME.'/lib/ruby/*.*')."\n".glob($MY_RUBY_HOME.'/lib/rubysite_ruby/*'),"\n"),',')
endif
