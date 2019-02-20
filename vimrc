syntax on
filetype plugin indent on
set mouse=a

set title
set number
set rnu
set ruler

set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent

set showcmd
set cursorline

set hlsearch

set background=dark
colorscheme hybrid

execute pathogen#infect()
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

let $PAGER=''

autocmd filetype gitcommit set textwidth=72
