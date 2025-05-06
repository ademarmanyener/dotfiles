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
  \ Plug 'preservim/nerdcommenter' |
  \ Plug 'majutsushi/tagbar' |
  \ Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } |
  \ Plug 'junegunn/fzf.vim' |
  \ Plug 'mattn/emmet-vim' |
  \ Plug 'mg979/vim-visual-multi', {'branch': 'master'} |
  \ Plug 'townk/vim-autoclose' |
  \ Plug 'tpope/vim-fugitive' |
  \ Plug 'airblade/vim-gitgutter' |
  \ Plug 'jreybert/vimagit' |
  \ Plug 'audibleblink/hackthebox.vim' | 
call plug#end()
