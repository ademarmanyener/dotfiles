if filereadable(expand('~/.config/nvim/plugins.vim'))
  source $HOME/.config/nvim/plugins.vim
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
set tags=./tags,tags;/
"set paste " or alternatively `autocmd FileType * setlocal formatoptions-=cro`

highlight Normal ctermbg=NONE
highlight Comment ctermfg=green
highlight LineNr ctermfg=yellow ctermbg=NONE
highlight TabLine ctermfg=black ctermbg=white cterm=NONE
highlight TabLineSel ctermfg=white ctermbg=NONE cterm=NONE
highlight TabLineFill ctermfg=NONE ctermbg=NONE cterm=NONE

highlight SignColumn guibg=red ctermbg=NONE
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'
let g:gitgutter_override_sign_column_highlight = 1

highlight SignColumn guibg=NONE
highlight SignColumn ctermbg=NONE

set signcolumn=yes
let g:gitgutter_sign_allow_clobber = 1

set updatetime=250

if filereadable(expand('~/.config/nvim/bindings.vim'))
  source $HOME/.config/nvim/bindings.vim
endif
