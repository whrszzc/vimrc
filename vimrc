set nocompatible " 关闭 vi 兼容模式
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/genutils'
Plugin 'vim-scripts/lookupfile'
Plugin 'vim-scripts/taglist.vim'
Plugin 'dimasg/vim-mark'
Plugin 'jiangmiao/auto-pairs'
call vundle#end()
filetype plugin indent on

syntax enable
syntax on " 自动语法高亮
"set t_Co=256
"let g:solarized_termcolors=256
colorscheme solarized " 设定配色方案
set background=dark
set cc=81
set number " 显示行号
set cursorline " 突出显示当前行
set cursorcolumn
set ruler " 打开状态栏标尺
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
set nobackup " 覆盖文件时不备份
set autochdir " 自动切换当前目录为当前文件所在的目录
filetype plugin indent on " 开启插件
set backupcopy=yes " 设置备份时的行为为覆盖
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan " 禁止在搜索到文件两端时重新搜索
set incsearch " 输入搜索内容时就显示搜索结果
set hlsearch " 搜索时高亮显示被找到的文本
set noerrorbells " 关闭错误信息响铃
set novisualbell " 关闭使用可视响铃代替呼叫
set t_vb= " 置空错误铃声的终端代码
" set showmatch " 插入括号时，短暂地跳转到匹配的对应括号
" set matchtime=2 " 短暂跳转到匹配括号的时间
set magic " 设置魔术
set hidden " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set guioptions-=T " 隐藏工具栏
set guioptions-=m " 隐藏菜单栏
set smartindent " 开启新行时使用智能自动缩进
set backspace=indent,eol,start
" 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1 " 设定命令行的行数为 1
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 
" 设置在状态行显示的信息
"set foldenable " 开始折叠
"set foldmethod=syntax " 设置语法折叠
"set foldcolumn=0 " 设置折叠区域的宽度
"setlocal foldlevel=1 " 设置折叠层数为
"set foldclose=all " 设置为自动关闭折叠 
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" 用空格键来开关折叠
" match OverLength /\%81v.\+/
highlight OverLength    ctermbg=red ctermfg=white guibg=#592929
highlight CursorLine    cterm=NONE ctermbg=black ctermfg=NONE
highlight CursorColumn  cterm=NONE ctermbg=black ctermfg=NONE
highlight WhitespaceEOL ctermbg=red guibg=red
highlight LineNr        ctermfg=darkgray
highlight LineNr        ctermbg=NONE
highlight ColorColumn   ctermbg=red guibg=red
highlight Search        ctermfg=3 ctermbg=0 guibg=Yellow
set ts=4
set expandtab
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> 
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Auto_Open=1
let Tlist_WinWidth = 50
match WhitespaceEOL /\s\+$/
let g:ctrlp_working_path_mode="ra"
"let g:ctrlp_user_command = 'find %s -type f -name "*.cc" -o -name "*.hh" -o -name "*.h" -o -name "*.c"'
"let g:ctrlp_show_hidden=1
noremap <F8> :TlistToggle<CR>
map <F3> :vertical resize +1<CR>
map <F4> :vertical resize -1<CR>
"map <F3> :tabp<CR>
"map <F4> :tabn<CR>

"lookupfile setting
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "不保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
"let g:LookupFile_SortMethod = ""                "关闭对搜索结果的字母排序
"if filereadable("./filenametags")
let g:LookupFile_TagExpr = '"/home/frank/filenametags"'
"endif
nmap <silent> ff :LookupFile<cr>
"nmap <silent> lk :LUTags<cr>
"nmap <silent> ll :LUBufs<cr>
"nmap <silent> lw :LUWalk<cr>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline_section_warning = '%{strftime("%H:%M:%S")}'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_theme='dark'

"设置切换Buffer快捷键"
nnoremap <C-L> :bn<CR>
nnoremap <C-H> :bp<CR>
