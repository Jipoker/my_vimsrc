set nocompatible
filetype plugin on

set nu

" CTRL-A is Select all
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G

" CTRL-C is Copy
vnoremap <C-C> "+y
" CTRL-V is Paste
map <C-V>		"+gP

" 在普通模式和可视模式下  , 映射 <C-W> 
noremap ,  <C-W>
