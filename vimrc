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
set scrolloff=7				"光标到buffer顶部/底部时保持7行距离
set autoread				"文件在vim之外修改过，自动读入
"set list 
"set listchars=tab:→\ ,trail:·,precedes:«,extends:»,eol:¶
"set listchars=tab:→\ ,trail:␣,extends:…,eol:⏎
"set listchars=tab:‣\ ,trail:·,precedes:«,extends:»,eol:¬
"set listchars=tab:>-,trail:.,precedes:<,extends:>,eol:$
"-----------------------bundle--------------------------
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'

call vundle#end()            " required

filetype plugin indent on    " required
"-----------------------colorscheme-----------------------
"set background=dark
colorscheme desert
"let g:solarized_termcolors=256
"-----------------------NERDTree------------------------
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif		"close vim if the only window left open is NERDTree
"-----------------------vim-airline---------------------
let g:airline_theme='cool'
let g:airline#extensions#tabline#enabled = 1		"display all buffers when there's only tab open
let g:airline_powerline_fonts = 1  
"-----------------------Tagbar--------------------------
let g:tagbar_autofocus = 1
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
autocmd BufRead * call tagbar#autoopen()
"-----------------------YouCompleteMe-------------------
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
map <leader>c :YcmCompleter GoTo<CR>				"ycm跳转到声明或定义
map <leader>d :YcmCompleter GoToDefinition<CR>		"ycm跳转到定义

"-----------------------ctags---------------------------
set tags=./tags;,tags
"-----------------------tagbar--------------------------
"-----------------------syntastic-----------------------
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_include_dirs = ['/usr/include']
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '∆'
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_style_warning_symbol = '≈'

"-----------------------shortcuts-----------------------
let mapleader=";"
map ge :bn<CR>								"next buffer
map Ge :bp<CR>								"previous buffer
map <C-b> :NERDTreeToggle<CR>				"toggle NERDTree
map <leader><Tab> :TagbarToggle<CR>			"toggle Tagbar window
