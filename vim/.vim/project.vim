:function Arrange()
"List Files in Current Directory
:	botright vsplit .
"List Tags
:	rightbelow split tags
:	execute "normal 45\<C-W><"
:	set nowrap
:	execute "normal 6\<C-E>"
:	set filetype=tags
:endfunction

:function OpenFile()
:	let file_name = expand("%"). "/". expand("<cWORD>")
:	execute "normal 1\<C-W>w"
:	let split_cmd = "100 split ". file_name
:	execute split_cmd
:endfunction

:call Arrange()
:map <F7> :!ctags --c++-kinds=+p --fields=+iaS --extra=+q *.cpp *.h<Enter>
:map <C-F9> :make<Enter>
:map <F4> :call OpenFile()<Enter>
:map <C-F4> <C-W>c<Enter>
:map <S-TAB> <C-W>T<Enter>
:map <C-TAB> :tabn<Enter>
:map <C-S-TAB> :tabp<Enter>
:set autoread
:set autowrite
