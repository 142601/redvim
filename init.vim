"
"                __  __  __
"               /\ \/\ \/\ \  __
"  _ __    __   \_\ \ \ \ \ \/\_\    ___ ___
" /\`'__\/'__`\ /'_` \ \ \ \ \/\ \ /' __` __`\
" \ \ \//\  __//\ \L\ \ \ \_/ \ \ \/\ \/\ \/\ \
"  \ \_\\ \____\ \___,_\ `\___/\ \_\ \_\ \_\ \_\
"   \/_/ \/____/\/__,_ /`\/__/  \/_/\/_/\/_/\/_/
"
"   title creat from :http://www.network-science.de/ascii/
"   ------------------------------------
"
"   Filetypt:     vim
"   Repository:   https://github.com/142601/redvim
"   License:      none
"   ------------------------------------
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim base config--------------------- {{{
" base config base of vimplus
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
set nocompatible
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

" indent and tab----------------------
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

" vim complete----------------------- 
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=preview " 补全时不显示窗口，只显示补全列表

" search------------------------------ 
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感

set foldlevelstart=0     " 设置折叠级别 help foldlevelstart

" cache config------------------------ 
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认

" coding config----------------------- 
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
call plug#begin()

" colorScheme
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim', { 'as': 'dracula'  }

Plug 'chun-yang/auto-pairs'

" nerdtree 
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'

" comment
Plug 'scrooloose/nerdcommenter'

" vim-markown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'   }

" html5
Plug 'othree/html5.vim'
Plug 'gregsexton/MatchTag'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'

Plug 'nathanaelkane/vim-indent-guides'

call plug#end()            
" }}}

" vim pugin setting------------------- {{{

" nerdtree---------------------------- 
let g:NERDTreeDirArrowExpandable    = '▸'
let g:NERDTreeDirArrowCollapsible   = '▾'
nnoremap <leader>nt :NERDTreeToggle<cr>
inoremap <leader>nt <esc>:NERDTreeToggle<cr>

" vim-nerdtree-syntax-highlight------- 
let g:NERDTreeHighlightFolders          = 1 
let g:NERDTreeHighlightFoldersFullName  = 1 

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
let g:NERDSpaceDelims               = 1
let g:NERDCompactSexyComs           = 1
let g:NERDDefaultAlign              = 'left'
let g:NERDAltDelims_java            = 1
let g:NERDCustomDelimiters          = { 'c': { 'left': '/*','right': '*/' } }
let g:NERDCommentEmptyLines         = 1
let g:NERDTrimTrailingWhitespace    = 1
let g:NERDToggleCheckAllLines       = 1

" vim-markdown------------------------
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit      = 1

" dracula-----------------------------
let g:dracula_blod          = 1
let g:dracula_italic        = 1
let g:dracula_underline     = 1
let g:dracula_inverse       = 1
let g:dracula_colorterm     = 1

" devicon----------------------------- 
let g:webdevicons_enable_nerdtree           = 1
let g:webdevicons_conceal_nerdtree_brackets = 1

" html5------------------------------- 
let g:html5_event_handler_attributes_complete   = 0
let g:html5_rdfa_attributes_complete            = 0
let g:html5_microdata_attributes_complete       = 0
let g:html5_aria_attributes_complete            = 0

" airline----------------------------- 
let g:airline_theme                         = "dracula"
let g:airline_powerline_fonts               = 1
let g:airline#extensions#tabline#enabled    = 1
if !exists('g:airline_symbols')
    let g:airline_symbols                   = {}
endif
let g:airline_left_sep                      = ''
let g:airline_left_alt_sep                  = ''
let g:airline_right_sep                     = ''
let g:airline_right_alt_sep                 = ''
let g:webdevicons_enable_airline_tabline    = 1
let g:webdevicons_enable_airline_statusline = 1

" coc.nvim----------------------------

set hidden
set nobackup
set nowritebackup
set signcolumn=yes
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>
set     updatetime=300
autocmd CursorHold  * silent call CocActionAsync('highlight')
autocmd CursorHoldI * silent call CocActionAsync('showSignatureHelp')
    " coc-snippets
imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
" let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<tab>'

" }}}

" gvim font and ui-------------------- {{{

" load vim default plugin
runtime macros/matchit.vim

set background=dark
colorscheme dracula

if has("gui_running")
    set guifont     =DejaVu\ Sans\ Mono\ for\ Powerline\ 12
    set guifontwide=wqy-zenhei\ 12
    set guioptions-=m   " hide menu-bar
    set guioptions-=T   " hide tool-bar
    set guioptions-=L   " hide left scrollbar
    set guioptions-=r   " hide right scrollbar
    set guioptions-=b   " hide bottom scrollbar
    set showtabline=0   " hide tab
    au GUIEnter * simalt ~x
endif

set cursorline

" vim-lsp-cxx-highlight---------------
" https://jonasjacek.github.io/colors/
hi      LspCxxHlSymVariable         ctermfg=166 cterm=bold
hi link LspCxxHlSymParameter        Label
hi      LspCxxHlGroupMemberVariable ctermfg=204
hi      LspCxxHISkippedRegion       cterm=italic

" vim-indent-guides-------------------
" let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

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
let mapleader       = ' '
let maplocalleader  = ","

" 编辑vimrc文件
nnoremap <leader>ev :edit $MYVIMRC<cr>
" 重新加载vimrc文件
nnoremap <leader>sv :source $MYVIMRC<cr>
" 插入模式快速进入正常模式
inoremap jk <esc>
" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" http://learnvimscriptthehardway.onefloweroneworld.com/chapters/24.html
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
