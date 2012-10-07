:map <F5> :!ctags --fields=+iaS --extra=+q --language-force=Java %:t<Enter>
:map <F6> :!write_makefile %:t %:t:r.class javac<Enter>
:map <C-F9> :make<Enter>
:map <F9> :!java %:t:r<Enter>
:set autowrite
:set dictionary+=$HOME/vim/java_keywords.txt
