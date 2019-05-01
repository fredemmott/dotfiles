set sw=2
set ts=2
set ai
set si
set bs=2
set sts=2
set et
set ruler
syn enable
set bg=dark
set nu
set mouse=a
set colorcolumn=81

call plug#begin('~/.vim/plugged')

Plug 'hhvm/vim-hack'

if v:version < 800
  Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
endif

if v:version >= 800
  Plug 'w0rp/ale'
  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-fugitive'
endif

call plug#end()

if v:version < 800
  let g:LanguageClient_serverCommands = {
    \ 'hack': [ 'hh_client', 'lsp' ],
    \ }
  nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
  nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
endif

if v:version >= 800
  let g:ale_completion_enabled = 1
  let g:ale_echo_msg_format = '[%linter%]% [code]% %s'
  let g:ale_linters = { 'hack': ['hack', 'hhast'] }
  nnoremap <silent> K :ALEHover<CR>
  nnoremap <silent> gd :ALEGoToDefinition<CR>
  nnoremap <M-LeftMouse> <LeftMouse>:ALEGoToDefinition<CR>

  " show type on hover
  if has('balloon_eval_term')
    set balloonevalterm
    let g:ale_set_balloons = 1
    let balloondelay = 250
  endif
endif

if has('mouse_sgr')
  set ttymouse=sgr
endif
