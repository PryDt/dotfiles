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
Plugin 'joshdick/onedark.vim'          " Atom's One Dark theme

" Trailing Whitespace Highlighter
Plugin 'bronson/vim-trailing-whitespace'

" NERDTree
Plugin 'scrooloose/nerdtree'

" Rust Support
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'
set hidden
let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_experimental_completer = 1

Plugin 'cespare/vim-toml'

" Crystal Support
Plugin 'rhysd/vim-crystal'

" syntax checking
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Vim for writing
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Discord Rich Presence
Plugin 'aurieh/discord.nvim'


call vundle#end()

syntax on
filetype plugin indent on

"colorscheme monokai-chris
"colorscheme SerialExperimentsLain
colorscheme onedark

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

" normie
set mouse=a

" for completing certain senarios
" inoremap ( ()<Esc>i
" inoremap { {}<Esc>i
" inoremap [ []<Esc>i
" inoremap ' ''<Esc>i
" inoremap " ""<Esc>i

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)
