" prydt's VimRC

" Vundle Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'joshdick/onedark.vim'           " Atom's One Dark theme
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'scrooloose/nerdtree'            " file tree
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'dylanaraps/wal.vim'             " syncs colorscheme with system
Plugin 'bhurlow/vim-parinfer'           " for lisp indentation
Plugin 'luochen1990/rainbow'
Plugin 'jiangmiao/auto-pairs'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'thaerkh/vim-indentguides'
Plugin 'ervandew/supertab'
Plugin 'vim-airline/vim-airline'
Plugin 'danro/rename.vim'
call vundle#end()


" syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" rust settings
let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_experimental_completer = 1

" for rainbow ()s
let g:rainbow_active = 1

" tab
set shiftwidth=4 smartindent expandtab

set number  " line numbers
set mouse=a " mouse movements
set ai " Auto indent
set si " Smart indent
map <C-n> :NERDTreeTabsToggle<LF> " toggle tree
set clipboard=unnamedplus " clipboard = normal clipboard
"colorscheme onedark " colorscheme
colorscheme wal " uses pywal colorscheme

" map alt + arrow keys to switch between windows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" open a terminal in a new tab with C-t
function TermTab()
    tabnew
    terminal
    startinsert
endfunction
command TermTab call TermTab()
map <C-t> :call TermTab()<LF>

" map esc to exit terminal mode
tnoremap <Esc> <C-\><C-n>

imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk
nmap <silent> j gj
nmap <silent> k gk

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onedark'
