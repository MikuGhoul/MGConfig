"-----------------------------------------------------------------
"		基础设置
"-----------------------------------------------------------------
set nocompatible            "关闭vi一致性
syntax on                   "语法高亮
filetype on                 "检测文件类型
set number                  "显示行号
set relativenumber          "相对行号
set ruler                   "右下显示光标位置
set tabstop=4               "tab键4个空格
set shiftwidth=4            "当前行之间交错时使用4空格
set ignorecase              "设置默认查找大小写不敏感
set hlsearch                "高亮查找的句子
set incsearch               "查找时逐字高亮
set showmatch               "显示括号匹配
set cursorline              "高亮光标行
"set cursorcolumn            "高亮光标列
set gcr=a:block-blinkon0    "光标不闪烁
set autoindent              "自动缩进
set smartindent             "智能缩进
set cindent                 "c/c++缩进
set scrolloff=7             "光标到buffer顶部/底部时保持7行距离
set autoread                "文件在vim之外修改过，自动读入
set backspace=2             "设置退格键可用
set mouse=a                 "使用鼠标
set history=74              "历史纪录74条
set encoding=utf-8

"set noerrorbells           "关闭错误提示音
"set background=dark        "黑色背景

"-----------------------------------------------------------------
"		判断是否是windows
"-----------------------------------------------------------------
if (has("win32")  || has("win64") || has("win95") || has("win16"))
	let g:isWindows = 1
	set guifont=Consolas:h10

else
	let g:isWindows = 0
endif

"-----------------------------------------------------------------
"		判断是否是gvim
"-----------------------------------------------------------------
if (has("gui_running"))
	let g:isGui = 1

	colorscheme artesanal
	set guioptions-=m       "remove menu bar
	set guioptions-=T       "remove toolbar
	set guioptions-=r       "remove right-hand scroll bar
	set guioptions-=L       "remove left-hand scroll bar
	"autocmd GUIEnter * simalt ~x
else
	let g:isGui = 0
	colorscheme desert
	highlight CursorLine cterm=NONE ctermbg=LightRed ctermfg=DarkRed guibg=LightRed guifg=DarkRed
	highlight Search cterm=NONE ctermbg=DarkBlue ctermfg=LightYellow guibg=DarkBlue guifg=LightYellow
endif


"-----------------------------------------------------------------
"		vim-plug
"-----------------------------------------------------------------
if isWindows == 1
	call plug#begin('$VIM/vim81/plugged')
else
	call plug#begin('~/.vim/plugged')
endif

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
"Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'


call plug#end()

"-----------------------------------------------------------------
"		快捷键
"-----------------------------------------------------------------
let mapleader=";"

noremap [b :bprevious <CR>                " previous buffer
noremap ]b :bnext <CR>                    " next buffer
noremap <F2> :NERDTreeToggle <CR>         " toggle NERDTree
inoremap <F2> <ESC> :NERDTreeToggle <CR>  " toggle NERDTree in insert mode
noremap <F7> :YcmDiags <CR>
inoremap <F7> <ESC> :YcmDiags <CR>
noremap <F8> :TagbarToggle <CR>
inoremap <F8> <ESC> :TagbarToggle <CR>
noremap <F9> <ESC> :lclose <CR>                           "close syntastic window
inoremap <F9> <ESC> :lclose <CR>
noremap <F10> <ESC> :Errors <CR>
inoremap <F10> <ESC> :Errors <CR>
noremap <F12> <ESC> :SyntasticToggleMode<CR>              "toggle syntastic
inoremap <F12> <ESC> :SyntasticToggleMode<CR>             "F11 is full screen, so...
noremap <leader>ts :ts <CR>                               "when you use ctrl-]
noremap <leader>cw :cw <CR>                               "for quickfix, when use make or vimgrep
noremap <leader>cn :cn <CR>                               "goto next quickfix list
noremap <leader>cp :cp <CR>                               "goto previous quickfix list
noremap <leader>ccl :ccl <CR>                             "close quickfix window



"-----------------------------------------------------------------
"		nerdtree
"-----------------------------------------------------------------
autocmd VimEnter * NERDTree
if !empty(expand('%:t:r'))
	autocmd VimEnter * wincmd w
endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif		"close vim if the only window left open is NERDTree
let NERDTreeNodeDelimiter = "\t"

"-----------------------------------------------------------------
"		ycm
"-----------------------------------------------------------------
"if isWindows == 1
"	let g:ycm_global_ycm_extra_conf = '$VIM/vim81/plugged/.ycm_extra_conf.py'
"else
"	let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"endif
"
"map <leader>c :YcmCompleter GoTo<CR>				"ycm跳转到声明或定义
"map <leader>d :YcmCompleter GoToDefinition<CR>		"ycm跳转到定义
"let g:ycm_key_invoke_completion = '<c-a>'			"ycm默认是ctrl+space手动开启补全
"
"let g:ycm_semantic_triggers =  {
"			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
"			\ 'cs,lua,javascript': ['re!\w{2}'],
"			\ }
"
"-----------------------------------------------------------------
"		syntastic
"-----------------------------------------------------------------
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1            "打开文件时检查,与ctrlfunny冲突
let g:syntastic_check_on_wq = 0               "保存文件后检查
let g:syntastic_enable_highlighting=1         "highlight
let g:syntastic_cpp_auto_refresh_includes = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '∆'
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_style_warning_symbol = '≈'
let g:airline#extensions#syntastic#enabled = 1

"-----------------------------------------------------------------
"		ctags
"-----------------------------------------------------------------
set tags=./tags;,tags

"-----------------------------------------------------------------
"		airline
"-----------------------------------------------------------------
let g:airline_theme='cool'
let g:airline#extensions#tabline#enabled = 1		"display all buffers when there's only tab open
let g:airline_powerline_fonts = 1

"-----------------------------------------------------------------
"		tagbar
"-----------------------------------------------------------------
" autocmd BufRead * call tagbar#autoopen(0)
"-----------------------------------------------------------------
"		ctrlp-funky
"-----------------------------------------------------------------
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1
