" ----------------------------------------
" Author: kam
" Date: Mon Nov 16 16:11:01 CET 2026
" License: MIT
" ----------------------------------------

set number
set relativenumber
set nowrap
set sidescroll=1
set encoding=utf-8

syntax on

let c_comment_strings=1

let mapleader = " "
let maplocalleader = " "
nnoremap <Space> <Nop> 

nnoremap <leader>ev :edit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :x<CR>

" Bind for search and replease
nnoremap <leader>s <ESC>:%s/old/new/g<left><left>

" Bind for executing commands and append stdout 
nnoremap <leader>sys <ESC>a<C-r>=system('')<left><left>

" Header for config files, edit comment when you use it
nnoremap <leader>h <ESC>ggO# -<ESC>"9x40"9po# Author: kam<CR># Date: <ESC>a<C-r>=system('date')<CR># License: MIT<CR># <ESC>40"9pnnoremap <leader>h <ESC>a# -<ESC>"9x40"9po# Author: kam<CR># Date: <ESC>a<C-r>=system('date')<CR># License: MIT<CR># <ESC>40"9p
