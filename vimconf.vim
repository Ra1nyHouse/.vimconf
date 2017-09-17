" specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tomasr/molokai'
Plug 'flazz/vim-colorschemes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline' " 状态栏增强
Plug 'skywind3000/asyncrun.vim'

Plug 'Valloric/YouCompleteMe' " , { 'do': '/usr/bin/python3.5 install.py' }
" 重要提示：for ubuntu
" 默认使用 install.py 会调用 path 路径中的 python编译，本机器设置的是 anaconda
" 的 python，但是 anaconda
" 的动态链接库不在系统的环境变量中，也不能加进去，因为会覆盖很多有用的
" lib，因此解决方案是使用系统的 Python环境来运行 Insall脚本！

" Plug 'davidhalter/jedi-vim'
Plug 'python-mode/python-mode'
Plug 'scrooloose/nerdcommenter'
call plug#end()

" **************系统设置**************
set encoding=utf-8
set number
set hlsearch " 高亮搜索结果
set incsearch " 边输入边产生结果
set nocompatible "关闭 vi 一致性
set backspace=indent,eol,start "indent 表示可删除自动缩进产生的空格，eol 可删除回车，start 可删除此次插入前的字符
set cursorline

" 括号补全
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
" ***************插件设置*************
nmap <F9> :NERDTreeToggle<cr>

colorscheme molokai

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" 显示 buffers
let g:airline#extensions#tabline#enabled = 1


" for ycm
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_python_binary_path = 'python'

" for python-mode
let g:pymode_python = 'python3'
let g:pymode_rope_completion = 0 " 关闭自动补全，使用ycm

