call pathogen#infect()
filetype plugin indent on
colorscheme wombat256

if &t_Co > 2 || has("gui_running")
    syntax on
endif

if has("gui_running")
    set lines=45
    set columns=84
    set guifont=ProggyCleanTTSZ\ 12
endif

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set shiftround
set autoindent
set copyindent

set ignorecase
set smartcase
set showmatch
set hlsearch
set incsearch

nnoremap ; :nohlsearch<CR>
nnoremap <F3> :NumbersToggle<CR>

set scrolloff=5
set backspace=2
set number
set ruler

set visualbell
set noerrorbells

set pastetoggle=<F2>

set backup
set backupdir=/tmp
set directory=/tmp

set laststatus=2
set statusline=%n\ %f%=%l\\%L

"NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeChDirMode=1
let NERDTreeIgnore=['\.pyc$', '\.swp$']
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
let NERDTreeShowBookmarks=1

"python remove trailing whitespace
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
"python highlighting extras
let python_highlight_all = 1

"PHP highlighting extras
let php_sql_query = 1
let php_htmlInStrings = 1
let php_baselib = 1

"warning when going over 79 characters per line
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.*/