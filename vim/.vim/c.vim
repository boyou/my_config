:map <F5> :!ctags %:t<Enter>
:map <F6> :!write_makefile %:t a.out gcc -Wall -D__MY_PC<Enter>
:map <C-F9> :make<Enter>
:map <F9> :!./a.out<Enter>
:set complete-=i
:set complete+=d
:set autowrite
:set dictionary+=$HOME/vim/c_keywords.txt
