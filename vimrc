"vimrc文件修改之后自动加载, Unix
autocmd! bufwritepost .vimrc source %

"退出Vim后vimrc自动生效，Windows
"autocmd! bufwritepost _vimrc source %

"设置backspace行为
set backspace=indent,eol,start

"显示行号
set number

"显示标尺
set ruler

"关闭自动备份
set nobackup
set noswapfile

"开启语法高亮
syntax enable
syntax on

"关闭兼容模式
set nocompatible

"设置命令行模式下的最大历史记录数
set history=200

"设置以unix的格式保存文件
set fileformat=unix

"高亮当前行
set cursorline

"高亮当前列
"set cursorcolumn

"始终显示状态栏
set laststatus=2

"设置tab键空4格
set tabstop=4

"将Tab自动转化成空格(需要输入真正的Tab键时，使用<C-V>+Tab)
set expandtab

"退格键一次删掉4个空格
set smarttab

"实时搜索
set incsearch

"高亮搜索结果
set hlsearch

"忽略大小写
set ignorecase

"有一个或以上大写字母时仍大小写敏感
set smartcase

"打开正则表达式
set magic

"显示匹配的括号
set showmatch

"显示当前所处模式
set showmode

"设置右下角显示当前光标位置
set showcmd

"设置主题为desertEx
"colorscheme desertEx
"set t_Co=256
"set background=dark

"禁止自动折行
set nowrap

"设置当文件被改动时自动载入
"set autoread

"设置退出插入模式后自动保存
"set autowrite

"允许插件
filetype plugin on

"共享剪贴板
set clipboard+=unnamed

"关闭输入错误的提示声音
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"禁止光标闪烁
"set gcr=a:block-blinkon0

"在处理未保存或只读文件的时候，弹出确认
"set confirm

"上下移动光标时光标上方和下方至少保留两行
set scrolloff=2

"开启自动缩进，智能缩进
set autoindent
set cindent
set smartindent
set shiftwidth=4

"为特定文件类型载入相关缩进文件
filetype indent on

"设置默认文件编码为utf-8
set fenc=utf-8

"设置字体为Monaco，Unix
"set guifont=Monaco\ 10

"设置默认字体Noto Mono,Windows
"set guifont=Noto\ Mono:h10

"自动判断编码时，依次尝试以下编码
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"设置默认窗口大小
"set lines=36 columns=84

"自动检测文件类型
filetype plugin indent on

"设置显示消息的列数
set cmdheight=2

"隐藏工具栏
set guioptions-=T

"Ctrl+T新建标签页
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>

"修改分屏移动快捷键
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"修改leader键为空格键
let mapleader = "\<space>"
let g:mapleader = "\<space>"

"设置插入模式和可视模式下的退出键
inoremap jj <Esc>:w<cr>
vnoremap jj <Esc>

"全选
map <Leader>a ggVG

"全选并复制到系统剪贴板
nmap <leader>aw <esc>ggVG"+y<esc>

"Y复制到行尾
nnoremap Y y$

"设置快捷键关闭当前buffer
nnoremap <leader>q :bd<CR>

"设置<C-s>保存文件
inoremap <C-s> <esc>:w<cr>A

"关闭QuickFix窗口
nnoremap <leader>c :cclose<bar>lclose<cr>

"一键替换全部Tab为空格
nmap <leader>ct <esc>:retab<cr>

"设置状态栏显示的内容
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\
"%{strftime(\"%d/%m/%y\ -\ %H:%M\")}\ %{ALEGetStatusLine()}

"F2可打印字符显示开关
nnoremap <F2> :set list! list?<CR>

"F4行号显示开关
nmap <F4> :set number! number?<CR>

"C，C++,python,java,shell按F9编译运行
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'python'
        exec "!time python2.7 %"
    elseif &filetype == 'sh'
        :!time bash %
    endif
endfunc

"自动插入文件头
autocmd BufNewFile *.cpp,*.cc,*.c,*.hpp,*.h,*.sh,*.py exec ":call SetTitle()"
func SetTitle()
    if expand("%:e") == 'sh'
        call setline(1,"\#!/bin/bash")
        call append(line("."), "")
    elseif expand("%:e") == 'py'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
        call append(line(".")+1, "")
    elseif expand("%:e") == 'cpp'
        call setline(1,"#include <iostream>")
        call append(line("."), "")
    elseif expand("%:e") == 'cc'
        call setline(1,"#include <iostream>")
        call append(line("."), "")
    elseif expand("%:e") == 'c'
        call setline(1,"#include <stdio.h>")
        call append(line("."), "")
    elseif expand("%:e") == 'h'
        call setline(1, "#pragma once")
    elseif expand("%:e") == 'hpp'
        call setline(1, "#pragma once")
    endif
endfunc
autocmd BufNewFile * normal G

"required
filetype off


"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim


"keep Plugin commands between vundle#begin/end.
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

call vundle#end()


