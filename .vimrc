" vim-plug
call plug#begin('~/.vim/autoload/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'cohama/lexima.vim'
Plug 'tpope/vim-fugitive'

call plug#end()

" Basic settings
set encoding=UTF-8
set fileencoding=UTF-8
set termencoding=UTF-8
set backspace=indent,eol,start
set hidden
set showcmd
set showmatch
set cursorline
set number
set wrap
set laststatus=2
set incsearch
set display+=lastline
set wildmenu
set ignorecase
set clipboard=unnamed
set wildmode=list,full
set nobackup
set noswapfile
nnoremap <ESC><ESC> :nohlsearch<CR>

" Indent settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set smartindent
augroup fileTypeIndent
  autocmd!
  autocmd!
  autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.yml,*.yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

" Window settings
nnoremap s <Nop>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sq :<C-u>q<CR>

" Tab settings
nnoremap st :<C-u>tabnew<CR>
nnoremap sn gt
nnoremap sp gT
nnoremap sQ :<C-u>tabclose<CR>

" Buffer settings
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

syntax on

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
