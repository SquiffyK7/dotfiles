syntax on
filetype plugin indent on
set mouse=a

set title
set laststatus=2
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
set incsearch

set background=dark
"let g:hybrid_custom_term_colors = 1
colorscheme hybrid

execute pathogen#infect()
"let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

let $PAGER=''

autocmd filetype gitcommit set textwidth=72

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatusLineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0? ' '.l:branchname.' ' :''
endfunction

set statusline=
set statusline+=\ %{StatusLineGit()}
set statusline+=\ %F
set statusline+=\
"set statusline+=%#LineNr#
