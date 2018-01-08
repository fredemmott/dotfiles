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

call plug#begin('~/.vim/plugged')
Plug 'hhvm/vim-hack'
Plug 'autozimu/LanguageClient-neovim', {'tag': 'binary-*-x86_64-apple-darwin' }
call plug#end()

let g:LanguageClient_serverCommands = {
  \ 'hh': [ 'hh_client', 'lsp' ],
  \ }

let g:hack#enable = 0
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
