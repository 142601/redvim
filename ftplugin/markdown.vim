   " 打开markdown文件预览
nnoremap <buffer> <localleader>ps :MarkdownPreview<cr>
   " 关闭文件预览
nnoremap <buffer> <localleader>pe :MarkdownPreviewStop<cr>
   " 表格自动对齐
nnoremap <buffer> <localleader>tf :TableFormat<cr>
   " 设置自动换行
set wrap
   " 在 'markdown' 模式下不开启行号与相对行号
set nonumber
set norelativenumber
