call plug#begin('~/.config/nvim/bundle')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
"themes
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'MaxSt/FlatColor'
"other
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'
call plug#end()

" basics
filetype plugin indent on
syntax on
set number
set relativenumber
set incsearch
set ignorecase
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab

" solarized
"syntax enable
"set background=dark
"colorscheme solarized
"
" molokai
colorscheme molokai
syntax enable
set background=dark
"
"deep-space
"set background=dark
"colorscheme deep-space
"let g:deepspace_italics=1
"let g:airline_theme='deep_space'
"syntax enable
"
"FlatColor
"if has('nvim') || has('termguicolors')
"  set termguicolors
"endif
"set background=dark
"colorscheme flatcolor
"let g:flatcolor_termcolors=16
