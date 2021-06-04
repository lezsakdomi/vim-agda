source ~/.vim/plugged/agda-vim/autoload/agda.vim "derekelkins/agda-vim
source AgdaComplete.vim
noremap <ESC>C a
autocmd FileType agda inoremap \ <C-R>=AgdaComplete(col('.'), "")<CR>

autocmd FileType spec inoremap \ <C-R>=AgdaComplete(col('.'), "")<CR>
autocmd FileType spec set sw=4
autocmd FileType spec set expandtab
autocmd FileType spec set syntax=off
