if ! filereadable(expand('~/.vim/autoload/plug.vim'))
  echo "Downloading junegunn/vim-plug to manage plugins..."
  silent !mkdir -p ~/.config/nvim/autoload/
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree' |
  \ Plug 'Xuyuanp/nerdtree-git-plugin' |
  \ Plug 'jistr/vim-nerdtree-tabs' |
  \ Plug 'terryma/vim-multiple-cursors' |
  \ Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } |
  \ Plug 'junegunn/fzf.vim' |
  \ Plug 'preservim/nerdcommenter' |
  \ Plug 'mattn/emmet-vim' |
  \ Plug 'majutsushi/tagbar' | 
  \ Plug 'townk/vim-autoclose' | 
  \ Plug 'audibleblink/hackthebox.vim' | 
call plug#end()
