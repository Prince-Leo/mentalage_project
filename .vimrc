
" =============================
" Windows GVim 配置
" =============================

" 显示行号和相对行号
set number
set relativenumber

" 解决 backspace 无法删除问题
set backspace=2

" 语法高亮
syntax on

" 自动缩进
set autoindent
set smartindent

" Tab 转换为空格，统一缩进
set tabstop=2
set shiftwidth=2
set expandtab

" 启用当前行高亮
set cursorline
highlight CursorLine cterm=NONE ctermbg=black ctermfg=green
highlight CursorLineNr cterm=NONE ctermbg=black ctermfg=green

" 设置光标样式
set guicursor=n-v-c:ver25
set guicursor=i:block

" 搜索设置：高亮、忽略大小写、智能大小写
set hlsearch
set incsearch
set ignorecase
set smartcase

" 状态栏永远可见
set laststatus=2

" 显示匹配的括号
set showmatch

" 命令行高度
set cmdheight=2

" 文件编码
set encoding=utf-8
set fileencodings=utf-8,gbk,latin1

" 禁止生成 swap 文件
set noswapfile

" 鼠标支持
" set mouse=a

" 快速保存和退出（Windows 上可能需要 Ctrl+S 被释放）
" nnoremap <C-s> :w<CR>
" nnoremap <C-q> :q<CR>

" 分屏快捷键
nnoremap ss :split<CR>
nnoremap sv :vsplit<CR>

" 分屏快速切换
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 显示不可见字符（空格、Tab）
set list
set listchars=tab:▸\ ,trail:·

" 自动补全括号（简单版）
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i

set nocompatible              " 关闭兼容模式
filetype off                  " 关闭文件类型检测
set showcmd                   " 显示命令
set wildmenu                  " 命令补全增强
set clipboard=unnamed         " 与系统剪贴板共享
set splitright                " 垂直分割窗口在右边
set splitbelow                " 水平分割窗口在下方
let g:python3_host_prog = 'D:/software/miniconda/envs/py313/python.exe'
" 设置leader为空格
let mapleader = " "
nnoremap <leader>r :w<CR>:!conda activate py313 && python %<CR>

" --------------------------
" Vundle 插件管理
" --------------------------
set rtp+=C:\Users\18193\vimfiles\bundle\Vundle.vim
call vundle#begin()

" Vundle 自己
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'       " 状态栏
Plugin 'vim-airline/vim-airline-themes'" 状态栏主题
Plugin 'tpope/vim-commentary'          " 快速注释
Plugin 'jiangmiao/auto-pairs'          " 自动补全括号
Plugin 'alvan/vim-closetag'            " 自动补全 HTML 标签
Plugin 'pangloss/vim-javascript'       " JS 高亮
Plugin 'hail2u/vim-css3-syntax'        " CSS3 语法高亮
Plugin 'othree/html5.vim'              " HTML5 支持
Plugin 'vim-python/python-syntax'      " Python 语法增强
Plugin 'maxmellon/vim-jsx-pretty'      " React/JSX 支持
Plugin 'mattn/emmet-vim'               " Emmet 快速写 HTML
Plugin 'tpope/vim-fugitive'            " git仓库管理

" --------------------------
" 文件浏览
" --------------------------
Plugin 'preservim/nerdtree'

" --------------------------
" 实时语法检查
" --------------------------
" Plugin 'dense-analysis/ale'

" --------------------------
" 代码补全（选一个）
" --------------------------
" Plugin 'ycm-core/YouCompleteMe'
" 或者使用 coc.nvim（注释掉 YouCompleteMe）
Plugin 'neoclide/coc.nvim', {'branch': 'release'}

" --------------------------
" 多语言支持
" --------------------------
" Plugin 'sheerun/vim-polyglot'

" --------------------------
" 代码格式化
" --------------------------
" Plugin 'Chiel92/vim-autoformat'
" Plugin 'prettier/vim-prettier'

" --------------------------
" Python 支持
" --------------------------
"Plugin 'Vimjas/vim-python-pep8-indent'
"Plugin 'klen/python-mode'

" --------------------------
" 其他实用插件
" --------------------------
Plugin 'junegunn/fzf'

call vundle#end()
filetype plugin indent on

" --------------------------
" 快捷键设置
" --------------------------
" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" 切换缓冲区
nnoremap <C-Tab> :bnext<CR>
nnoremap <C-S-Tab> :bprevious<CR>

" 代码格式化
nnoremap <leader>f :call CocAction('format')<CR>

" 跳转定义
nnoremap <leader>d gd

" 查看类型定义
nnoremap <leader>y gy

" nerdtree显示隐藏文件
let NERDTreeIgnore=['\c^ntuser\.dat.*']
let NERDTreeShowHidden=1

" Emmet 快捷键
let g:user_emmet_expandabbr_key='<C-y>,'
let g:user_emmet_mode='i'

" 启用airline的git扩展
let g:airline_theme='tomorrow'
let g:airline#extensions#fugitive#enabled=1
let g:airline#extensions#fugitive#branch=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#tab_max_length=20
let g:airline#extensions#tabline#show_tabs=1

" --------------------------
" ALE 配置（可根据需要调整）
" --------------------------
" let g:ale_linters_explicit = 1
" let g:ale_fix_on_save = 1
" let g:ale_fixers = {
" \   'javascript': ['prettier'],
" \   'css': ['prettier'],
" \   'html': ['prettier'],
" \   'python': ['autopep8'],
" \}

" ===============================
" coc.nvim 浮窗配色方案
" ===============================
" 浮窗背景和文字
hi CocFloating guibg=#1e1e2e guifg=#d4d4d4
" 浮窗边框
hi CocFloatingBorder guifg=#2463ff
" 错误提示
hi CocErrorHighlight guifg=#ff5555 gui=bold
" 警告提示
hi CocWarningHighlight guifg=#ffcc00 gui=bold
" 信息提示
hi CocInfoHighlight guifg=#4fc1ff gui=bold
" 提示 (hint)
hi CocHintHighlight guifg=#a0a0ff gui=italic
" 文本选择/高亮
hi CocSelectedText guibg=#33334d guifg=#ffffff

" --------------------------
" 结束
" --------------------------
