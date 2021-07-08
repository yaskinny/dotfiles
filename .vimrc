set autoindent
set noswapfile
set nobackup
set nowritebackup
let g:ycm_auto_trigger=0
inoremap -. • 
set hlsearch
set ignorecase
set smartcase
set incsearch
set encoding=utf-8
set linebreak
set wrap
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <F5> :tabnew<CR>
syntax enable
filetype plugin indent on
set ruler
set number
set mouse=a
set title
set clipboard=unnamedplus
map = :GoTest<CR>
inoremap jk <ESC>
call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'vim-syntastic/syntastic'
Plug 'Matt-Deacalion/vim-systemd-syntax'
Plug 'terryma/vim-multiple-cursors'
Plug 'flazz/vim-colorschemes'
Plug 'rust-lang/rust.vim'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-commentary'
call plug#end()
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab commentstring=#\ %s
autocmd FileType sh setlocal ts=2 sts=2 sw=2 expandtab commentstring=#\ %s
autocmd FileType rs setlocal ts=2 sts=2 sw=2 expandtab commentstring=//\ %s
autocmd FileType go setlocal ts=2 sts=2 sw=2 expandtab commentstring=//\ %s
autocmd FileType bash setlocal ts=2 sts=2 sw=2 expandtab commentstring=#\ %s
autocmd FileType cpp setlocal ts=2 sts=2 sw=2 expandtab commentstring=//%s
autocmd FileType cs setlocal ts=2 sts=2 sw=2 expandtab commentstring=//%s
autocmd FileType txt setlocal ts=2 sts=2 sw=2 expandtab commentstring=#\ %s
set tabstop=4
set expandtab
set shiftwidth=4
let g:rainbow_active = 1
color solarized8_dark_flat
map <space> <NOP>
map <space> :FZF<CR>
noremap <C-F> :Rg<CR>
nnoremap <F3> :noh<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
hi Normal guibg=NONE ctermbg=NONE

let g:syntastic_mode_map = { "mode": "passive", "active_filetypes": [], "passive_filetypes": [] }
