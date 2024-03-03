if filereadable(expand('~/.vim_config/plugins.vim'))
  source $HOME/.vim_config/plugins.vim
endif

if filereadable(expand('~/.vim_config/bindings.vim'))
  source $HOME/.vim_config/bindings.vim
endif

set background=dark
set t_Co=256
let mapleader=','
set mouse=a

syntax on
colo hackthebox

set encoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set number
set hlsearch
set ignorecase
set incsearch
set smartcase
set ruler
set nowrap
set showmatch
set showtabline=2
set laststatus=0

highlight Normal ctermbg=NONE
highlight Comment ctermfg=green
highlight LineNr ctermfg=yellow ctermbg=NONE
highlight TabLine ctermfg=black ctermbg=white cterm=NONE
highlight TabLineSel ctermfg=white ctermbg=NONE cterm=NONE
highlight TabLineFill ctermfg=NONE ctermbg=NONE cterm=NONE
