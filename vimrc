" pry's vimrc

" Vundle Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'ervandew/supertab'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'danro/rename.vim'
Plugin 'thaerkh/vim-indentguides'
Plugin 'scrooloose/nerdtree'

" Colorscheme
Plugin 'dylanaraps/wal.vim'
Plugin 'joshdick/onedark.vim'

" Status bar
Plugin 'vim-airline/vim-airline'

" Black auto format python files on save
Plugin 'psf/black'

" Git support
Plugin 'tpope/vim-fugitive'

" Nice commenting
Plugin 'tpope/vim-commentary'

call vundle#end()

set shiftwidth=4 smartindent expandtab " tabs
set number  " line numbers
set mouse=a " mouse movements
set ai " auto indent
set si " smart indent
set clipboard=unnamedplus " clipboard = normal clipboard
set list " show special characters

" Colorscheme
colorscheme onedark
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='wal'

" Black Autoformat
autocmd BufWritePre *.py execute ':Black'
