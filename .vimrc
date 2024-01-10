call plug#begin('~/.vim/plugged')
	Plug 'itchyny/lightline.vim'
	Plug 'catppuccin/vim', {'as':'catppuccin'}
call plug#end()

let g:lightline = {'colorscheme':'catppuccin_macchiato'}

" Basic vim setup
set mouse=a
set encoding=utf-8
set nocompatible
set number
set cursorline
set autoindent
set nobackup
set noshowmode
set laststatus=2
set termguicolors
colorscheme catppuccin_macchiato
filetype on
syntax on

" Search settings
set incsearch
set ignorecase
set smartcase
set hlsearch

" Tabs settings
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Autocompletion
set wildmenu
set wildmode=list:longest

" Ignore these files
set wildignore=*.docx,*.jpg,*.png,*.exe,*.gif,*.pyc,*.flv,*.img

" Control splits
set splitbelow
