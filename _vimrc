execute pathogen#infect()
set nocompatible
filetype plugin on

set ruler "标尺
set number "行号
set cursorline   " 突出显示当前行
set lines=36  columns=125
set wildmenu
set wildmode=full
set history=200
set hlsearch
set incsearch  "即时匹配显示
colorscheme xoria256
syntax enable 
syntax on
set go=  "无菜单无工具栏
set cpoptions+=$

"-----------------------------------------------------------------------------
"set for Windows System.  -- Start
"-----------------------------------------------------------------------------
" CTRL-A is Select all
" noremap <C-A> gggH<C-O>G
" inoremap <C-A> <C-O>gg<C-O>gH<C-O>G

" CTRL-C is Copy
vnoremap <C-C> "+y
" CTRL-V is Paste
map <C-V>		"+gP
" Pasting blockwise and linewise selections is not possible in Insert and
" Visual mode without the +virtualedit feature.  They are pasted as if they
" were characterwise instead.
" Uses the paste.vim autoload script.
" Use CTRL-G u to have CTRL-Z only undo the paste.  
exe 'inoremap <script> <C-V> <C-G>u' . paste#paste_cmd['i']
exe 'vnoremap <script> <C-V> ' . paste#paste_cmd['v']

" CTRL-Z is Undo; not in cmdline though
noremap <C-Z> u
inoremap <C-Z> <C-O>u
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



