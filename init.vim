
" Filetypt:     vim
" Repository:   https://github.com/142601/vimCfg
" License:      none


" gui vim config---------------------- {{{
if has("gui_running")
    au GUIEnter * simalt ~x " 窗口启动时自动最大化
    set guioptions-=m   " hide menu-bar
    set guioptions-=T   " hide tool-bar
    set guioptions-=L   " hide left scrollbar
    set guioptions-=r   " hide right scrollbar
    set guioptions-=b   " hide bottom scrollbar
    set showtabline=0   " hide tab
endif
" }}}

" vim base config--------------------- {{{
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
" set cmdheight=2          " 设置命令行的高度
set showcmd              " select模式下显示选中的行数
set ruler                " 总是显示光标位置
set laststatus=2         " 总是显示状态栏
set number               " 开启行号显示
set relativenumber       " 设置相对行号
set cursorline           " 高亮显示当前行
set whichwrap+=<,>,h,l   " 设置光标键跨行
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
" }}}

" indent and tab---------------------- {{{
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " 将制表符扩展为空格
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
set smarttab             " 在行和段开始处使用制表符
set nowrap               " 禁止折行
set backspace=2          " 使用回车键正常处理indent,eol,start等
" }}}

" vim complete----------------------- {{{
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=preview " 补全时不显示窗口，只显示补全列表
" }}}

" search------------------------------ {{{
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感
" }}}

" global fold------------------------- {{{
"set foldmethod=syntax   " 设置基于语法进行代码折叠
"set nofoldenable        " 关闭折叠代码
set foldlevelstart=0     " 设置折叠级别 help foldlevelstart
" }}}

" cache config------------------------ {{{
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认
" }}}

" coding config----------------------- {{{
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gbk,cp936,gb2312,gb18030
" 解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim 
" }}}

" vim plugins list-------------------- {{{
" call plug#begin('~/.vim/plugged')
call plug#begin()

" 一款精美的主题,建议在gvim中使用
Plug 'altercation/vim-colors-solarized'

" 黑暗主题
Plug 'dracula/vim', { 'as': 'dracula'  }

" 括号自动匹配的插件
Plug 'chun-yang/auto-pairs'

" 文件目录显示所需要的插件------------ 
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'

" 代码注释插件
Plug 'scrooloose/nerdcommenter'

" 补全插件
" Plug 'valloric/youcompleteme'
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" vim-markown 插件安装
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" vim preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'   }

" html5
Plug 'othree/html5.vim'
Plug 'gregsexton/MatchTag'

" airline
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" c/c++ complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'

call plug#end()            
" }}}

" vim pugin setting------------------- {{{
" nerdtree setting-------------------- 

" nerdtree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" vim-nerdtree-syntax-highlight
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb
" nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" NERDcommenter----------------------- 
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" devicon
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
" Youcompleteme config--------------- 
" java config

" html5
let g:html5_event_handler_attributes_complete = 0
let g:html5_rdfa_attributes_complete = 0
let g:html5_microdata_attributes_complete = 0
let g:html5_aria_attributes_complete = 0

" vim airline
" let g:airline_theme="dracula"
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
" endif
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''

" Deoplete

" coc.nvim
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" always show signcolumns
set signcolumn=yes

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" }}}

" gvim font and ui-------------------- {{{
" load vim default plugin
runtime macros/matchit.vim
" 主题
set background=dark
" set background=light
" colorscheme solarized
colorscheme dracula
if has("gui_running")
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12
    " set guifontwide=楷体:h12:cANSI:qDRAFT
    set guifontwide=wqy-zenhei\ 12
endif
" 高亮显示当前行,列
" set cursorcolumn
set cursorline
" }}}

" abbreviation creat----------------- {{{
" 创建 分割线
iabbrev vimLine """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 创建 子标题分割线
iabbrev vimSLine ------------------------------------
" 创建独特的分割线
iabbrev uniqueLine ⌠≮✠♪∗≡⇔∷∷∷∷☺☻¯₌‹∈⁼⊂≤⇐◀«←♀✓●▷☆〔↔〕★◁◐✗♂→»▶⇒≥⊃⁼∋›₌¯☻☺∷∷∷∷⇔≡∗♩✠≯⌡
" }}}

" global keymapping creat------------- {{{
let mapleader= ' '
" let maplocalleader = "\\"
let maplocalleader = ","

" 编辑vimrc文件
nnoremap <leader>ev :edit $MYVIMRC<cr>
" 重新加载vimrc文件
nnoremap <leader>sv :source $MYVIMRC<cr>
" 插入模式快速进入正常模式
inoremap jk <esc>
" nerdtree 打开关闭快捷键
nnoremap <leader>nt :NERDTreeToggle<cr>
inoremap <leader>nt <esc>:NERDTreeToggle<cr>
" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" vim setting for each fileype
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

" Vimscript file setting ------------- {{{
augroup filetype_vim
                            " 避免重新加载组
    autocmd!
                            " 设置vim脚本的折叠方式
    autocmd FileType vim setlocal foldmethod=marker
                            " 快速的创建新的折叠格式
    autocmd FileType vim nnoremap <buffer> <localleader>cf :call CreatFoldFormat()<cr>
augroup END

function! CreatFoldFormat()
    call setline(".","\" ------------------------------------ {{{")
    call append(line("."),"\" }}}")
    normal! ^ll
endfunction
" }}}

" java file setting------------------- {{{
augroup java_setting
    autocmd!
                            " 保存前自动编译
"    autocmd BufWritePre *.java  exec "call  AutoComplierJava()"
                            " 创建新的文件时创建内容
    autocmd BufNewFile  *.java  exec "call CreatPublicClass()"
                            " main 函数的缩写
    autocmd FileType    java    exec "iabbrev psvm public static void main(String[] args)" 
                            " println 的缩写
    autocmd FileType    java    exec "iabbrev sout System.out.println" 
augroup END

" 编译java文件的函数
function! AutoComplierJava()
    let output = system("javac" . " " . expand("%"))
    echom output
endfunction

" 创建文件的函数
function! CreatPublicClass()
    call append(1,"}")
    call append(1,"public class " . expand("%")[:-6] . " {")
endfunction
" }}}

" markdown setting-------------------- {{{
augroup markdown_config
   autocmd!                 
   " 打开markdown文件预览
   autocmd FileType markdown nnoremap <buffer> <localleader>ps :MarkdownPreview<cr>
   " 关闭文件预览
   autocmd FileType markdown nnoremap <buffer> <localleader>pe :MarkdownPreviewStop<cr>
   " 表格自动对齐
   autocmd FileType markdown nnoremap <buffer> <localleader>tf :TableFormat<cr>
   " 设置自动换行
   autocmd FileType markdown set wrap
   " 在 'markdown' 模式下不开启行号与相对行号
   autocmd FileType markdown set nonumber
   autocmd FileType markdown set norelativenumber
augroup END
" }}}

" html setting------------------------ {{{
augroup html_setting
    autocmd BufNewFile *.html exec "call AutoCompleteTag"
augroup END

" 标签补全
function! AutoCompleteTag()
    " inoremap <html> <esc>i<html><html><esc>F<i
    iabbrev <html> <html></html>
endfunction
" }}}
" http://learnvimscriptthehardway.onefloweroneworld.com/chapters/24.html
