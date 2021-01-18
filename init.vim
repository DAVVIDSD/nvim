set number
set title
set titlestring=%F\ %a%r%m
set nobackup       
set nowritebackup  
set noswapfile    
set hidden
set mouse=a
set linebreak
set termguicolors
set numberwidth=1
set clipboard=unnamedplus
syntax enable
set showcmd
set ruler

" set cursorline
set encoding=utf-8
set showmatch
set sw=2 ts=2 et
set relativenumber
set laststatus=2
set noshowmode 
set timeoutlen=500
set expandtab
set shiftwidth=2
set softtabstop=2
set background=dark
set tabstop=2
set nocompatible
set updatetime=300
set omnifunc=syntaxcomplete#Complete
set nowritebackup
syntax on
set hlsearch            " highlight the last searched term
filetype plugin on  

call plug#begin('~/.vim/plugged')


Plug 'rakr/vim-one'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'morhetz/gruvbox'
Plug 'ntk148v/vim-horizon'
Plug 'honza/vim-snippets'
Plug 'hardcoreplayers/oceanic-material'
Plug 'dracula/vim'
Plug 'tpope/vim-commentary'
call plug#end()

let g:gruvbox_contrast_dark='hard'
colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE

"Comands
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>t :tabnew .<CR>
nmap <Leader>j :tabp<CR>
nmap <Leader>l :tabn<CR>
nmap <Leader>m :!node %<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>f  <Plug>(coc-format)
nnoremap <leader><left> :vertical resize -10<cr>
nnoremap <leader><down> :resize +5<cr>
nnoremap <leader><up> :resize -5<cr>
nnoremap <leader><right> :vertical resize +10<cr>

let g:lightline = {
      \ 'colorscheme': 'horizon',
      \ }


inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

"nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

