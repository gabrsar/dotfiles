" VIMRC - Gabrel Saraiva :D
set guifont=Liberation\ Mono\ for\ Powerline\ 10 
:nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>"------ Meta ------"

" Limpa todos os comandos para quando carregar o VIMRC de novo.
autocmd!

execute pathogen#infect()
filetype plugin indent on

set background=dark
set nocompatible                                                             " Quebra a compatibilidade com o VI antigo
"set viminfo=                                                                 " NÃ£o salva o VIM INFO.

set colorcolumn=81

"------ GUI Options --------------------"

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

"------ Console UI & Text display ------"

set textwidth=0 wrapmargin=0												 " Disable line wrapping physical 
set wrap																	 " Apenas desenha a linha na linha de baixo caso ultrapasse o limite
set cul                                                                      " highlight current line
syntax enable
hi CursorLine term=none cterm=none ctermbg=4
set cmdheight=1                                                              " explicitly set the height of the command line
set ve=all
set showcmd                                                                  " Show (partial) command in status line.
set listchars=eol:$,tab:>-,trail:.,
set rnu                                                                      " yay line numbers
set ruler                                                                    " show current position at bottom
set noerrorbells                                                             " don't whine
set incsearch
set visualbell t_vb=                                                         " and don't make faces
set lazyredraw                                                               " don't redraw while in macros
set scrolloff=5                                                              " keep at least 5 lines around the cursor
set report=0                                                                 " report back on all changes
set shortmess=atI                                                            " shorten messages and don't show intro
set wildmenu                                                                 " turn on wild menu :e <Tab>
set wildmode=list:longest                                                    " set wildmenu to list choice

colorscheme molokai
"------ Text editing and searching behavior ------"

set nohlsearch                                                              " turn off highlighting for searched expressions
set matchtime=5                                                              " blink matching chars for .x seconds
set mouse=a                                                                  " try to use a mouse in the console (wimp!)
set ignorecase                                                               " set case insensitivity
set smartcase                                                                " unless there's a capital letter
set completeopt=menu,longest,preview                                         " more autocomplete <Ctrl>-P options
set nostartofline                                                            " leave my cursor position alone!
set backspace=2                                                              " equiv to :set backspace=indent,eol,start
set textwidth=120                                                           " we like 80 columns
set showmatch                                                                " show matching brackets

"------ Indents and tabs ------"

set autoindent                                                               " set the cursor at same indent as line above
set smartindent                                                              " try to be smart about indenting (C-style)
"set expandtab                                                               " expand <Tab>s with spaces; death to tabs!
set shiftwidth=4                                                             " spaces for each step of (auto)indent
set softtabstop=4                                                            " set virtual tab stop (compat for 8-wide tabs)
set tabstop=4                                                                " for proper display of files with tabs
set shiftround                                                               " always round indents to multiple of shiftwidth
set copyindent                                                               " use existing indents for new indents
set preserveindent                                                           " save as much indent structure as possible

"------ Teclas de Atalho ------"

map <F1>    :NERDTreeToggle<CR>
map <F2>    ggVGg?
map <F3>    :set background=dark<CR>
map <F4>    :set background=light<CR>

map <F5>	:colorscheme molokai<CR>
map <F6>	:colorscheme eclipse<CR>
map <F7>    :colorscheme vividchalk<CR>
map <F8>    :colorscheme nuvola<CR>

map <C-F5>	:colorscheme <CR>
map <C-F6>	:colorscheme <CR>
map <C-F7>  :colorscheme <CR>
map <C-F8>  :colorscheme <CR>

map <F9>	"+y<CR>
map <F10>	"+p<CR>
map <F11>	:tabnew
map <F12>   :tabnew ~/.vimrc<CR>

map <F9>	:set rnu<CR>
map <F10>	:set number<CR>
map <C-S-F>	ggVG=''


map <S-F1>	:SmallerFont<CR>
map <S-F2>	:LargerFont<CR>
map <S-F3>	:call CursorToggle()<CR>
map <S-F12> :source ~/.vimrc<CR>


nnoremap <C-n> :call NumberToggle()<cr>

set laststatus=2
let g:airline_powerline_fonts=1


"------------ FUNCOES -----------------"


" http://vim.wikia.com/wiki/Change_font_size_quickly 
let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
let s:minfontsize = 1
let s:maxfontsize = 100
function! AdjustFontSize(amount)
  if has("gui_gtk2") && has("gui_running")
    let fontname = substitute(&guifont, s:pattern, '\1', '')
    let cursize = substitute(&guifont, s:pattern, '\2', '')
    let newsize = cursize + a:amount
    if (newsize >= s:minfontsize) && (newsize <= s:maxfontsize)
      let newfont = fontname . newsize
      let &guifont = newfont
    endif
  else
    echoerr "You need to run the GTK2 version of Vim to use this function."
  endif
endfunction

function! LargerFont()
  call AdjustFontSize(1)
endfunction
command! LargerFont call LargerFont()

function! SmallerFont()
  call AdjustFontSize(-1)
endfunction
command! SmallerFont call SmallerFont()







if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif








function! CursorToggle()
  	if(&cursorcolumn == 1)
    	set nocursorcolumn
  	else
    	set cursorcolumn
  	endif
endfunc


function! NumberToggle()
  	if(&relativenumber == 1)
    	set number
  	else
    	set relativenumber
  	endif
endfunc



function! ToggleList()
	if(&list == 1)
		set nolist
	else
		set list
	endif
endfunc

nnoremap <C-l> :call ToggleList()<CR>



function! Auto_complete_string()                               
    if pumvisible()                                            
        return "\<C-n>"                                        
    else                                                       
        return "\<C-x>\<C-o>\<C-r>=Auto_complete_opened()\<CR>"
    end                                                        
endfunction                                                    

function! Auto_complete_opened()                               
    if pumvisible()                                            
        return "\<c-n>\<c-p>\<c-n>"                            
    else                                                       
        return "\<bs>\<C-n>"                                   
    end                                                        
endfunction                                                    

inoremap <expr> <Nul> Auto_complete_string()

" Fazer margens de textos
let @p = '4|i###########################################################################'
let @o = '4|i#                                                                         #'

let @i = '4|i+=========================================================================+'
let @u = '4|i|                                                                         |' 

" Completar comentÃ¡rios com igual atÃ© o final da linha
let @q = 'i€@7 ===============================================================================81|d$i€@7:€kb'
