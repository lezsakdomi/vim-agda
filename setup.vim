source ~/.vim/plugged/agda-vim/autoload/agda.vim "derekelkins/agda-vim
source AgdaComplete.vim
autocmd FileType agda inoremap \ <C-R>=AgdaComplete(col('.'), "")<CR>
