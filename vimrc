" PryDt's VimRC

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" for Vundle
Plugin 'VundleVim/Vundle.vim'

" for all the snazzy colorschemes
Plugin 'flazz/vim-colorschemes'
Plugin 'rhysd/vim-color-spring-night'  " Spring Night Colorscheme
Plugin 'lu-ren/SerialExperimentsLain'  " Serial Experiments Lain Colorscheme

" light & fluffy status bar
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
set laststatus=2 " setting airline active
let g:airline_theme='spring_night'
" let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" git gutter
Plugin 'airblade/vim-gitgutter'
set updatetime=250

" C++ Highlighting
Plugin 'octol/vim-cpp-enhanced-highlight'

" Trailing Whitespace Highlighter
Plugin 'bronson/vim-trailing-whitespace'

" for Emmet
Plugin 'mattn/emmet-vim'

" for Crystal-lang Support
Plugin 'rhysd/vim-crystal'

call vundle#end()

syntax on
filetype plugin indent on

colorscheme monokai-chris
"colorscheme SerialExperimentsLain

" use 4 spaces instead of tabs
set shiftwidth=4
set softtabstop=0
set expandtab
set tabstop=4
set smarttab

" line numbers
set number

" shows what you're typing as a command
set showcmd

