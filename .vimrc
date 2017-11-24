
"==========================Vundle==============================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'        " NERDTree
Plugin 'mattn/emmet-vim'            " emmet
Plugin 'pangloss/vim-javascript'    " js
Plugin 'Valloric/YouCompleteMe'     " complete
Plugin 'marijnh/tern_for_vim'       " js complete
Plugin 'vim-airline/vim-airline'    " tab line
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'



call vundle#end()            " required
filetype plugin indent on    " required


"============================================================
set number    " 设置行号
set laststatus=2  " 总是显示状态栏
autocmd GUIEnter * simalt ~x  "全屏
set cursorline   " 高亮光标所在行
set cursorcolumn  " 高亮列
colorscheme desert
set t_Co=256  " 显示颜色
set ruler      " 显示标尺  
syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
set guifont=consolas:h12    " 设置字体及大小
set mouse=a        "启用鼠标
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8
set ambiwidth=double    "设置中文支持
set guioptions-=m       " 隐藏菜单栏
set guioptions-=T        " 隐藏工具栏
set guioptions-=r       " 隐藏右侧滚动条
set guioptions-=L       " 隐藏左侧滚动条
set guioptions-=b       " 隐藏底部滚动条
set guioptions-=R
set guioptions-=l
"set guioptions-=e
"set showtabline=0       " 隐藏Tab栏
set noundofile            " 不生成备份文件
set nobackup              " 同上
set noswapfile            " 同上
"set showcmd  "（在右下角）显示现有的命令
set clipboard=unnamed     " 剪切板通用



"=========================NERDTree=============================
map <C-b> :NERDTreeToggle<CR>


"=======================airline============================
let g:airline_theme="luna" 
"let g:airline_powerline_fonts = 1       " 使用powerline打过补丁的字体
"let g:airline#extensions#tabline#enabled = 1    " 开启tabline
"let g:airline#extensions#tabline#left_sep = ' '   " tabline中当前buffer两端的分隔字符
"let g:airline#extensions#tabline#left_alt_sep = '|'   " tabline中未激活buffer两端的分隔字符
"let g:airline#extensions#tabline#buffer_nr_show = 1   " tabline中buffer显示编号
"set lazyredraw
nnoremap <C-N> :bn<CR>     " 切换buffer


"=========================缩进/折叠================================
set showmatch        " 设置匹配模式
set ai!            "设置自动缩进
filetype indent on  " 自适应不同语言的智能缩进
set expandtab " 将制表符扩展为空格
set tabstop=4 " 设置编辑时制表符占用空格数
set shiftwidth=4  " 设置格式化时制表符占用空格数
set softtabstop=4  " 让 vim 把连续数量的空格视为一个制表符
" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable


"=========================快捷键=====================================
let mapleader=","

