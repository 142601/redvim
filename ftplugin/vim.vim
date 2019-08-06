" 设置折叠方式
setlocal foldmethod=marker
" 创建vim文件折叠方式的快捷键
noremap <leader>cf :call CreatFoldFormat()<cr>

function! CreatFoldFormat()
    call setline(".","\" ------------------------------------ {{{")
    call append(line("."),"\" }}}")
    normal! ^ll
endfunction

