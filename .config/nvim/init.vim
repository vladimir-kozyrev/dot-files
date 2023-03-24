set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

call plug#begin(stdpath('data') . '/plugged')
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-endwise'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'vim-test/vim-test'
Plug 'jiangmiao/auto-pairs'
Plug 'hashivim/vim-terraform'
call plug#end()

set termguicolors " this variable must be enabled for colors to be applied properly
syntax on
colorscheme onedark
filetype plugin indent on
filetype on
filetype indent on

" Ruby
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2

" NerdTree
nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Bind :nohlsearch to Ctrl+L when in NORMAL mode
" :help mapping for more information
nnoremap <C-l> :nohlsearch<CR>

" Highlight the current line number
set nu
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline

nmap <F1> <nop>
