set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'marijnh/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'klen/python-mode'
Plugin 'mxw/vim-jsx'

call vundle#end()

filetype plugin indent on
set background=light
colorscheme Tomorrow

if &t_Co > 2 || has("gui_running")
    syntax on
endif

if has("win32")
    set guifont=Source_Code_Pro:h12:cANSI
else
    set guifont=Source\ Code\ Pro\ 12
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
set scrolloff=5
set backspace=2
set number
set ruler
set visualbell
set noerrorbells
set laststatus=2
set statusline=%n\ %F\ %m%r\%=%c-%l/%L
set encoding=utf-8
set clipboard=unnamedplus

nnoremap ; :nohlsearch<CR>
nmap <Enter> o<Esc>

set pastetoggle=<F2>

if has("unix")
    set backup
    set backupdir=/tmp
    set directory=/tmp
elseif has("win32")
    set backup
    set backupdir=C:\Windows\Temp
    set noswapfile
endif

"NERDTree
let NERDTreeChDirMode=1
let NERDTreeIgnore=['\.pyc$', '\.swp$']
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
let NERDTreeShowBookmarks=1
map <C-n> :NERDTreeToggle<CR>

"YouCompleteMe
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Javascript
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:syntastic_javascript_checkers = ['eslint']

"Python
"python-mode
let g:pymode=1
let g:pymode_warnings=1
let g:pymode_paths=[]
let g:pymode_trim_whitespaces=1
let g:pymode_options=1
let g:pymode_options_max_ling_length=79
let g:pymode_options_colorcolumn=1
let g:pymode_quickfix_minheight=3
let g:pymode_quickfix_maxheight=6
let g:pymode_indent=1
let g:pymode_folding=1
let g:pymode_motions=1
let g:pymode_doc=1
let g:pymode_doc_bind='K'
let g:pymode_lint=1
let g:pymode_lint_on_fly=1
let g:pymode_lint_on_write=0
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']
let g:pymode_lint_ignore = "E501,W"
let g:pymode_syntax_all=1


"PHP highlighting extras
let php_sql_query=1
let php_htmlInStrings=1
let php_baselib=1

" Uncomment the following to have Vim jump to the last position when 
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
