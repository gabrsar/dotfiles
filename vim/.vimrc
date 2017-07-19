set shell=/bin/bash
set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'          
Plugin 'tomasr/molokai'
Plugin 'whatyouhide/vim-gotham'
Plugin 'valloric/youcompleteme'
Plugin 'jelera/vim-javascript-syntax'
call vundle#end() " required
filetype plugin indent on " required

" VIM CONFIGURATIONS
syntax on

" The NERD tree configs
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


set background=dark
set nocompatible
colorscheme gotham256

"------ GUI Options --------------------"

set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove right-hand scroll bar
set guioptions-=L "remove left-hand scroll bar

"------ Console UI & Text display ------"

syntax enable
set textwidth=0 wrapmargin=0 " Disable line wrapping physical 
set wrap " Apenas desenha a linha na linha de baixo caso ultrapasse o limite
set cul " highlight current line
hi CursorLine term=none cterm=none ctermbg=DarkGrey
set cmdheight=1 " explicitly set the height of the command line
set ve=all
set showcmd " Show (partial) command in status line.
set listchars=eol:$,tab:>-,trail:.,
set rnu " yay line numbers
set ruler " show current position at bottom
set noerrorbells " don't whine
set incsearch
set visualbell t_vb= " and don't make faces
set lazyredraw " don't redraw while in macros
set scrolloff=5 " keep at least 5 lines around the cursor
set report=0 " report back on all changes
set shortmess=atI " shorten messages and don't show intro
set wildmenu " turn on wild menu :e <Tab>
set wildmode=list:longest " set wildmenu to list choice

"------ Text editing and searching behavior ------"

set nohlsearch " turn off highlighting for searched expressions
set matchtime=5 " blink matching chars for .x seconds
set mouse=a " try to use a mouse in the console (wimp!)
set ignorecase " set case insensitivity
set smartcase " unless there's a capital letter
set completeopt=menu,longest,preview " more autocomplete <Ctrl>-P options
set nostartofline " leave my cursor position alone!
set backspace=2 " equiv to :set backspace=indent,eol,start
set textwidth=120 " we like 80 columns
set showmatch " show matching brackets

"------ Indents and tabs ------"

set autoindent " set the cursor at same indent as line above
set smartindent " try to be smart about indenting (C-style)
"set expandtab " expand <Tab>s with spaces; death to tabs!
set shiftwidth=2 " spaces for each step of (auto)indent
set softtabstop=2 " set virtual tab stop (compat for 8-wide tabs)
set tabstop=2 " for proper display of files with tabs
set shiftround " always round indents to multiple of shiftwidth
set copyindent " use existing indents for new indents
set preserveindent " save as much indent structure as possible

"------ Teclas de Atalho ------"

map <F2> ggVGg?
map <F3> :set background=dark<CR>
map <F4> :set background=light<CR>

map <F5> :colorscheme molokai<CR>
map <F6> :colorscheme gotham256<CR>

map <F9> "+y<CR>
map <F10> "+p<CR>
map <F11> :tabnew
map <F12> :tabnew ~/.vimrc<CR>

map <F9> :set rnu<CR>
map <F10> :set number<CR>
map <C-S-F> ggVG=''


set laststatus=2

