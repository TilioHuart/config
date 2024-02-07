:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set expandtab
:set mouse=a
:autocmd FileType make setlocal noexpandtab

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

call plug#end()

lua require('init')

nnoremap <C-space> :NvimTreeToggle
