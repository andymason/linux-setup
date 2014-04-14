
set nocompatible              " be iMproved
set shiftwidth=4
set tabstop=4
set incsearch
set ruler
set ignorecase
set ttyfast
set title
set sm
set nowrap
set autowrite
set smartindent
set autoindent
set expandtab
set mouse=a

" Map home and end keys
map <esc>OH <home>
cmap <esc>OH <home>
imap <esc>OH <home>
map <esc>OF <end>
cmap <esc>OF <end>
imap <esc>OF <end>

" Unindent
imap <S-Tab> <C-o><<

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'nanotech/jellybeans.vim'

colorscheme jellybeans 

filetype plugin indent on     " required!

" NERDTree options
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" Strip white space
autocmd BufWritePre *.py :%s/\s\+$//e

set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set number

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
