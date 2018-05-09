set sw=2
set ts=2
set ai
set si
set sts=2
set et
set ruler
syn enable
set bg=dark
set nu
set mouse=a

call plug#begin('~/.vim/plugged')
Plug 'hhvm/vim-hack'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
call plug#end()

let g:LanguageClient_serverCommands = {
  \ 'hh': [ 'hh_client', 'lsp' ],
  \ }

let g:hack#enable = 0
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
