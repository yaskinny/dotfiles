set relativenumber
syntax on
filetype on
set mouse=a
set title
set clipboard=unnamedplus
set hlsearch
set ignorecase
set smartcase
set incsearch
set encoding=utf-8
set linebreak
set wrap
set autoindent
set noswapfile
set nobackup
set nowritebackup
set tabstop=4
set expandtab
set shiftwidth=4

inoremap jk <ESC>


set ruler

call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
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


autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab commentstring=#\ %s 
autocmd FileType sh setlocal ts=2 sts=2 sw=2 expandtab commentstring=#\ %s
autocmd FileType rs setlocal ts=2 sts=2 sw=2 expandtab commentstring=//\ %s 
autocmd FileType go setlocal ts=2 sts=2 sw=2  expandtab commentstring=//\ %s 
autocmd FileType bash setlocal ts=2 sts=2 sw=2 expandtab commentstring=#\ %s
autocmd FileType cpp setlocal ts=2 sts=2 sw=2 expandtab commentstring=//%s
autocmd FileType cs setlocal ts=2 sts=2 sw=2 expandtab commentstring=//%s
autocmd FileType txt setlocal ts=2 sts=2 sw=2 expandtab commentstring=#\ %s 
autocmd FileType * let b:coc_suggest_disable = 1
autocmd FileType * :highlight CocFloating ctermbg=black
autocmd FileType * :highlight CocFloating ctermfg=white

" fix some fat finger shits
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

" -------------------------------------------------------------------------------------------------
" coc.nvim default settings
" -------------------------------------------------------------------------------------------------

" if hidden is not set, TextEdit might fail.
set hidden
" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
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
nmap <leader>r :GoRun<CR>
let g:syntastic_mode_map = { "mode": "passive", "active_filetypes": [], "passive_filetypes": [] }
hi Normal guibg=NONE ctermbg=NONE
set statusline+=%#warningmsg#
let g:rainbow_active = 1
color solarized8_dark_flat
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





