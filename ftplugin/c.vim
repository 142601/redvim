" 设置项目的根路径
autocmd FileType c let b:coc_root_patterns = ['compile_commands.json']
" 基于缩进或语法进行代码折叠
set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set foldenable
" 设置字数提示行
set colorcolumn=80
