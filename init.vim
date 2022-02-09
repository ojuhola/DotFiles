
""  My vimrc
""  op 20.12.2020
""

" General settings
set nocompatible                          " Set compatibility to Vim only.
syntax on                                 " Turn on syntax highlighting.
set nowrap                                " No line wrapping with long lines
set noerrorbells
set mouse=a

" Set undo and history
set undofile
set history=1000
set nobackup
set noswapfile

" Tab and similar settings
set textwidth=145
set formatoptions=tcqrn1

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set smartindent

set backspace=indent,eol,start

" Scrolling settings
set scrolloff=5                           " Do not scroll to the very end

" Status bar and display settings
set laststatus=1
set modelines=0                           " Turn off modelines
set noshowcmd
set noshowmode
set shortmess+=F

set number
set relativenumber
set numberwidth=4
set cursorline

" Search settings
set incsearch
set ignorecase
set smartcase
set hlsearch

" Window split settings
set splitbelow
set splitright

" Colors
" colorscheme '' 

"" Plugin manager

" Load plugins
call plug#begin()

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-commentary'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-compe'
  
call plug#end()

"" Plugin settings

" Set Airline theme and options
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" Lsp setting
lua require'lspconfig'.bashls.setup{}
