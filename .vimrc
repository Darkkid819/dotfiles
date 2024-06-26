set nocompatible
set t_Co=256
set tabstop=4
set shiftwidth=4
set expandtab
set statusline=%t
set relativenumber
set number
set autoindent
set hlsearch
set include=
set splitbelow
set splitright
filetype plugin indent on
syntax on
call plug#begin('~/.vim/plugged')
Plug 'tomasr/molokai'
Plug 'triglav/vim-visual-increment'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/vim-gitbranch'
Plug 'sagarrakshe/toggle-bool'
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'digitaltoad/vim-pug', { 'for': 'pug' }
Plug 'quabug/vim-gdscript', { 'for': 'gdscript' }
Plug 'jceb/vim-orgmode', { 'for': 'org' }
Plug 'tpope/vim-speeddating', { 'for': 'org' }
call plug#end()
colorscheme molokai
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi Search ctermbg=yellow ctermfg=black
hi PmenuSel ctermbg=yellow ctermfg=black
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeIgnore = ['\.pyc$','\.o$']
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_default'
let g:airline_mode_map = {
        \ '__' : '------',
        \ 'n'  : 'N',
        \ 'i'  : 'I',
        \ 'R'  : 'R',
        \ 'v'  : 'V',
        \ 'V'  : 'V',
        \ 'c'  : 'C',
        \ '' : 'V',
        \ 's'  : 'S',
        \ 'S'  : 'S',
        \ '' : 'S',
        \ 't'  : 'T',
        \ }
let g:airline_section_b = '[%{gitbranch#name()}]'
