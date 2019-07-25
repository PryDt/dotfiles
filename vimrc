" prydt's VimRC
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'joshdick/onedark.vim'          " Atom's One Dark theme
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'vim-airline/vim-airline'
"Plugin 'rust-lang/rust.vim'
"Plugin 'racer-rust/vim-racer'
"Plugin 'cespare/vim-toml'
"Plugin 'rhysd/vim-crystal'
"Plugin 'scrooloose/syntastic'
"Plugin 'junegunn/goyo.vim'
"Plugin 'junegunn/limelight.vim'
"Plugin 'ryanoasis/vim-devicons'
call vundle#end()


" syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" rust settings
let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_experimental_completer = 1

" tab
set shiftwidth=4 smartindent expandtab

set number  " line numbers
set mouse=a " mouse movements
map <C-n> :NERDTreeTabsToggle<LF> " toggle tree
set clipboard=unnamedplus " clipboard = normal clipboard
colorscheme onedark " colorscheme

" map alt + arrow keys to switch between windows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" open a terminal in a new tab
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
