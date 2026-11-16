source $VIMRUNTIME/defaults.vim

call plug#begin('~/.vim/plugged')
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
call plug#end()

set number
set relativenumber
set nowrap
set sidescroll=1
set encoding=utf-8

let g:rustfmt_autosave = 1         " auto-format on save via rustfmt
autocmd BufWritePre *.rs ALEFix    " optional extra fix-on-save

" Use Tab to navigate/select the completion popup
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? "\<C-n>" :
      \ "\<Tab>"
inoremap <silent><expr> <S-TAB>
      \ coc#pum#visible() ? "\<C-p>" :
      \ "\<C-h>"

" Confirm selection with Enter
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"

" Snippet navigation kept separate and simple
snoremap <silent> <TAB> <Esc>:call coc#snippet_next()<CR>
snoremap <silent> <S-TAB> <Esc>:call coc#snippet_prev()<CR>
