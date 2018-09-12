if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

:set mouse=a

call plug#begin('~/.vim/plugged')

" file list on the left side
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" one dark theme
Plug 'joshdick/onedark.vim'

" syntax highlighting for various languages
Plug 'sheerun/vim-polyglot'

call plug#end()

" one dark theme settings
syntax on
colorscheme onedark

" nerdtree settings
let g:NERDTreeMouseMode=3
let NERDTreeShowHidden=1
