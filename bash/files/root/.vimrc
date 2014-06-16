" 显示行号
set nu
"
" " 高亮当前行
set cursorline
" 用空格代替Tab
set expandtab
" 自动缩进
" set autoindent
" set smartindent
" set smarttab
" set cindent
" 缩进宽度
set tabstop=4
set shiftwidth=4
" 语法高亮
syntax on
" 禁止在 Makefile 中将 Tab 转换成空格
" autocmd FileType make set noexpandtab 
" 添加自定义命令(必须以大写字母开头)，并在启动时执行
" 支持256终端配色
set t_Co=256
