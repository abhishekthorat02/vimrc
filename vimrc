set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'easymotion/vim-easymotion'
Plugin 'davidhalter/jedi-vim'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'ervandew/supertab'
call vundle#end()            " required
filetype plugin indent on    " required
			
syntax on
filetype plugin indent on
"
let mapleader = ","
"
" " Security
set modelines=0
:set mouse=a
"
" " Show file stats
set ruler
"
" " Blink cursor on error instead of beeping (grr)
set visualbell
"
" " Encoding
set encoding=utf-8
"
" " Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
"
" " Cursor motion
set scrolloff=3
set backspace=indent,eol,start
"
" " Move up/down editor lines
nnoremap j gj
nnoremap k gk
"
" " Allow hidden buffers
set hidden
"
" " Rendering
set ttyfast
"
" " Status bar
set laststatus=2
"
" " Last line
set showmode
set showcmd
"
" " Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch



" Plugin Settings
"""""""""""""""""""""""""""""""""""""""""""
"               NERD TREE                 "
"""""""""""""""""""""""""""""""""""""""""""
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map <C-n> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""
"               Syntastic                 "
"""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"""""""""""""""""""""""""""""""""""""""""""
"               VImCOlour                 "
"""""""""""""""""""""""""""""""""""""""""""
syntax enable
set background=dark
colorscheme pablo 

"""""""""""""""""""""""""""""""""""""""""""
"               VIMTAB                    "
"""""""""""""""""""""""""""""""""""""""""""
let g:jedi#popup_on_dot = 0  
filetype plugin indent on
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
