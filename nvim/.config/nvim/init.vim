set encoding=utf8
set t_Co=256
syntax on
syntax enable

call plug#begin('~/.local/share/nvim/plugged')
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

let mapleader=' '
set nonumber
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set gcr=a:blinkon0
set autoread
set laststatus=2
set clipboard=unnamed
set hidden
set splitright
set splitbelow
set shell=/usr/bin/fish
set ttyfast
set mouse=a

set incsearch
set hlsearch
set viminfo='100,f1

set noswapfile
set nobackup
set nowritebackup
set backupdir=/var/tmp,/tmp
set directory=/var/tmp,/tmp

filetype plugin on
filetype indent on
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set colorcolumn=81
set nowrap
set linebreak
set formatoptions+=j
set textwidth=80

hi Search cterm=NONE ctermfg=black ctermbg=yellow

au BufRead,BufNewFile *.md set filetype=markdown
augroup markdown
  au!
  autocmd Syntax markdown setlocal wm=2
augroup END

autocmd! BufWritePost init.vim so ~/.config/nvim/init.vim"

set wildmode=longest,list,full
set wildmenu
set wildignore=*.o,*.obj,*~

set scrolloff=10
set sidescrolloff=15
set sidescroll=1

let g:airline_powerline_fonts = 0
let g:airline_theme = 'base16_eighties'
if !exists('g:airline_symbols') | let g:airline_symbols = {} | endif
let g:airline_section_b = ''
let g:airline_section_z = airline#section#create(['%l:%c:%L'])
let g:airline_let_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#ale#enabled = 1

let g:ctrlp_show_hidden = 1

set signcolumn=yes
let g:gitgutter_eager = 0
let g:gitgutter_override_sign_column_highlight = 0
highlight Comment ctermbg=black
highlight SignColumn ctermbg=black

map <Leader>e :CtrlPBuffer<CR>
map <Leader>r :CtrlP<CR>

cmap w!! %!sudo tee > /dev/null %
vnoremap < <gv
vnoremap > >gv
