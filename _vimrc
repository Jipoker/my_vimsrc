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

" ����ͨģʽ�Ϳ���ģʽ��  , ӳ�� <C-W> 
noremap ,  <C-W>
