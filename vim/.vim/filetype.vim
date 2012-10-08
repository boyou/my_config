if exists("did_load_filetypes")
	finish
endif

augroup filetypedetect
	au! BufRead,BufNewFile *.project setfiletype project
augroup END
