set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'marijnh/tern_for_vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'klen/python-mode'
Plugin 'mxw/vim-jsx'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-surround'
Plugin 'fatih/vim-go'

call vundle#end()

filetype plugin indent on
set t_Co=256
colorscheme ron 

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
set noswapfile

nnoremap ; :nohlsearch<CR>
set pastetoggle=<F2>
nmap <Enter> o<Esc>

"NERDTree
let NERDTreeChDirMode=1
let NERDTreeIgnore=['\.pyc$', '\.swp$']
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
let NERDTreeShowBookmarks=1
map <C-n> :NERDTreeToggle<CR>

"YouCompleteMe
let g:enable_ycm_at_startup = 0
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
let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

"Javascript
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:syntastic_javascript_checkers = ['eslint']

"Go
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_template_autocreate = 0

"Python
"python-mode
let g:pymode=1
let g:pymode_warnings=1
let g:pymode_paths=[]
let g:pymode_trim_whitespaces=1
let g:pymode_options=1
let g:pymode_options_max_line_length=99
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
let g:pymode_lint_on_write=1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']
let g:pymode_lint_ignore = "E265,W0612"
let g:pymode_syntax_all=1
let g:pymode_rope=0
let g:pymode_rope_lookup_project=0
let g:pymode_rope_completion=1 
let g:pymode_rope_complete_on_dot=1

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
