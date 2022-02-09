set shell=bash

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'unblevable/quick-scope'

call plug#end()


syntax on
filetype on
set number
set title
set clipboard=unnamedplus
set cc=120
set shiftwidth=2
set tabstop=2
set noai
set number
set cmdheight=2
set ignorecase
set ruler
set smartcase
set hlsearch
set magic
set foldcolumn=1
set nowb
set noswapfile
set expandtab
set smartindent
set wrap
set hidden
set mouse=
set updatetime=300
set nobackup
set nowritebackup
set signcolumn=yes
set completeopt=menu,menuone,preview,noselect,noinsert
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab cursorcolumn commentstring=#\ %s 
autocmd FileType sh setlocal ts=2 sts=2 sw=2 expandtab commentstring=#\ %s
autocmd FileType rs setlocal ts=2 sts=2 sw=2 expandtab commentstring=//\ %s 
autocmd FileType go setlocal ts=2 sts=2 sw=2  expandtab commentstring=//\ %s 
autocmd FileType bash setlocal ts=2 sts=2 sw=2 expandtab commentstring=#\ %s
autocmd FileType cpp setlocal ts=2 sts=2 sw=2 expandtab commentstring=//%s
autocmd FileType cs setlocal ts=2 sts=2 sw=2 expandtab commentstring=//%s
autocmd FileType txt setlocal ts=2 sts=2 sw=2 expandtab commentstring=#\ %s 
autocmd FileType * :highlight CocFloating ctermbg=black
autocmd FileType * :highlight CocFloating ctermfg=white
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
let g:go_def_mapping_enabled = 0
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

function! s:check_back_space() abort
	  let col = col('.') - 1
	    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>




ab ien if err != nil {

ab absub 0.0.0.0
nmap <leader>r :GoRun<CR>
let g:syntastic_mode_map = { "mode": "passive", "active_filetypes": [], "passive_filetypes": [] }
set statusline+=%#warningmsg#
let g:rainbow_active = 1
color dracula
map <space> <NOP>
map <space> :FZF<CR>
noremap <C-F> :Rg<CR>
nnoremap <F3> :noh<CR>
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
map = :GoTest<CR>
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
let g:go_highlight_trailing_whitespace_error=0



let g:go_auto_type_info = 1

set colorcolumn=120
hi ColorColumn ctermbg=darkgray
set autoindent


let mapleader = ","
let g:mapleader = ","


let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

nmap <leader>f :GFiles<CR>
nmap <leader>F :GFiles?<CR>
nmap <leader>g :Ag 

nmap gs  <plug>(GrepperOperator)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

function! VisualSelection(direction, extra_filter) range
  let l:saved_reg = @"
  execute "normal! vgvy"

  let l:pattern = escape(@", '\\/.*$^~[]')
  let l:pattern = substitute(l:pattern, "\n$", "", "")

  if a:direction == 'gv'
    call CmdLine("Ag \"" . l:pattern . "\" " )
  elseif a:direction == 'replace'
    call CmdLine("%s" . '/'. l:pattern . '/')
  endif

  let @/ = l:pattern
  let @" = l:saved_reg
endfunction

cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
cnoremap <Up> <Nop>
cnoremap <C-j> <Down>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>
cnoremap <C-k> <Up>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>
inoremap jk <ESC>

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
hi Normal guibg=NONE ctermbg=NONE
