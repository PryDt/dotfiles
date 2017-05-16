"______          ______ _    ______      _  ______ _ _           
"| ___ \         |  _  \ |   |  _  \    | | |  ___(_) |          
"| |_/ / __ _   _| | | | |_  | | | |___ | |_| |_   _| | ___  ___ 
"|  __/ '__| | | | | | | __| | | | / _ \| __|  _| | | |/ _ \/ __|
"| |  | |  | |_| | |/ /| |_  | |/ / (_) | |_| |   | | |  __/\__ \
"\_|  |_|   \__, |___/  \__| |___/ \___/ \__\_|   |_|_|\___||___/
"            __/ |                                               
"           |___/                                                
" 
"  ~/.vimrc -- vim dotfile

" for Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" for Vundle itself
Plugin 'VundleVim/Vundle.vim'

" for One Color Scheme
Plugin 'rakr/vim-one'

" for Vim Surround
Plugin 'tpope/vim-surround'

" for Vim Colors Solarized
Plugin 'altercation/vim-colors-solarized'

" for Sexy Comments (w/ NERD Commenter)
Plugin 'scrooloose/nerdcommenter'

" for code-completion
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" for nice status / tabline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1

" for NERD tree's nice tree explorer
Plugin 'scrooloose/nerdtree'

" C++11/14 Highlighting
Plugin 'octol/vim-cpp-enhanced-highlight'

call vundle#end()

" Tabs to Spaces
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" Setting Line Numbers
set number

" for One Color Scheme
let g:airline_theme='one'
if(empty($TMUX))
  if(has("termguicolors"))
    set termguicolors
  endif
endif

" for UTF-8 encoding
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

syntax enable
set laststatus=2 " for Airline

set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized
colorscheme one
