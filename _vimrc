set nocompatible
filetype plugin on

set ru "标尺
set nu "行号
set lines=38  columns=128
set wildmenu
set wildmode=full
set history=200
colorscheme xoria256
syntax enable 
syntax on
set go=  "无菜单无工具栏

"-----------------------------------------------------------------------------
"set for Windows System.  -- Start
"-----------------------------------------------------------------------------
" CTRL-A is Select all
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G

" CTRL-C is Copy
vnoremap <C-C> "+y
" CTRL-V is Paste
map <C-V>		"+gP
" Use CTRL-S for saving, also in Insert mode
noremap <C-S>		:update<CR>
vnoremap <C-S>		<C-C>:update<CR>
inoremap <C-S>		<C-O>:update<CR>
"-----------------------------------------------------------------------------
"set for Windows System. -- End
"-----------------------------------------------------------------------------
" 在普通模式和可视模式下  , 映射 <C-W> 
noremap ,  <C-W>

if has("multi_byte") 
    " UTF-8 编码 
    set encoding=utf-8 
    set termencoding=utf-8 
    set formatoptions+=mM 
    set fencs=utf-8,gbk 
    if v:lang =~? '^/(zh/)/|/(ja/)/|/(ko/)' 
        set ambiwidth=double 
    endif 
    if has("win32") 
        source $VIMRUNTIME/delmenu.vim 
        source $VIMRUNTIME/menu.vim 
        language messages zh_CN.utf-8 
    endif 
else 
    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte" 
endif



