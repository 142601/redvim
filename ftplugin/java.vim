
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
