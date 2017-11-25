syntax on					"语法高亮
set number					"显示行号
set relativenumber			"相对行号
set ruler					"右下显示光标位置
set tabstop=4				"tab键4个空格
set shiftwidth=4			"当前行之间交错时使用4空格
set ignorecase				"设置默认查找大小写不敏感
set hlsearch				"高亮查找的句子
set incsearch				"查找时逐字高亮
set showmatch				"显示括号匹配
set cursorline				"高亮光标行
set cursorcolumn			"高亮光标列
set ai						"自动缩进
set si						"智能缩进
set cindent					"c/c++缩进
hi Normal ctermbg=NONE
"-----------------------bundle--------------------------
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
call vundle#end()            " required

filetype plugin indent on    " required
"-----------------------molokai-------------------------
colorscheme molokai
