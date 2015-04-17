filetype off                  " required!
syntax on

set nocompatible              " be iMproved
set t_Co=256
set background=dark
set number
set autoindent
set smartindent
set wrap
set linebreak
set nolist
set incsearch
set showmatch
set expandtab
set showmode
set smartcase
set ruler
set tabstop=4
set shiftwidth=4
set colorcolumn=80
set mouse=a
set lazyredraw
set magic
set ignorecase
set smartcase
set incsearch
set omnifunc=syntaxcomplete#Complete

" don't wait ESC-sequences
set ttimeoutlen=50
" more commands history
set history=100
" ... and more undolevels
set undolevels=2048
" reload buffer when external changes detected
set autoread

set backspace=eol,start,indent
set whichwrap+=<,>,[,]

" Ignore folders and files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/bower_components/*,*/.git/*,*/.sass-cache/*

" Backup and swap settings
" ------------------------
set backup
set backupdir=~/tmp,/tmp " store backups
set dir=~/tmp,/tmp       " files in RAM

" Filetypes and encoding
" ----------------------
" utf-8 by default
set encoding=utf-8
" the order of enumeration encoding
set fileencodings=utf-8,windows-1251,iso-8859-15,koi8

" Show name of buffer in terminal title
set title


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
" original repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'pangloss/vim-javascript'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'scrooloose/syntastic'
Bundle 'bling/vim-airline'
Bundle 'godlygeek/tabular'
Bundle 'valloric/MatchTagAlways'
Bundle 'tomtom/tcomment_vim'
Bundle 'ervandew/supertab'
Bundle 'matze/vim-move'

let g:move_key_modifier = 'C'

" Map home and end keys
map <esc>OH <home>
cmap <esc>OH <home>
imap <esc>OH <home>
map <esc>OF <end>
cmap <esc>OF <end>
imap <esc>OF <end>

" Map indent and un-indent to shift tab
imap <S-Tab> <Esc><<i

colorscheme elflord 
highlight ColorColumn ctermbg=235
highlight Pmenu ctermbg=2
highlight LineNr ctermfg=darkgrey
 
" vim-scripts repos
" Git repos on your local machine (i.e. when working on your own plugin)

" Close NerdTree if it's the only window open
map <C-n> :NERDTreeToggle<CR>
" NERDTree
let g:NERDTreeWinSize           = 40
let g:NERDTreeChristmasTree     = 1
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeQuitOnOpen        = 0
let g:NERDTreeWinPos            = 'left' "by default
let g:NERDTreeShowBookmarks     = 1
let g:NERDTreeDirArrows         = 0

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Trim white space on save
autocmd BufWritePre *.py :%s/\s\+$//e


" Easy motion config
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)


" Let subertab look for filenames
let g:SuperTabDefaultCompletionType = "context"

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.


" Setup JS validation
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
" let g:syntastic_auto_jump = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_error_symbol = "!!"
let g:syntastic_check_on_open = 1
let g:syntastic_enable_highlighting    = 0


" CSS lint options
let g:syntastic_css_csslint_args = "--ignore=box-sizing,box-model,compatible-vendor-prefixes,adjoining-classes,floats,font-faces,shorthand,font-sizes,regex-selectors,important"
