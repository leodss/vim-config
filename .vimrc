"===========================================================================
"--------------------- PLUGIN MANAGER FOR VIM (VUNDLE) ---------------------
"===========================================================================
set nocompatible
filetype on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'garbas/vim-snipmate'
  Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'tomtom/tlib_vim'
  Plugin 'honza/vim-snippets'
  Plugin 'preservim/nerdtree'
  Plugin 'zivyangll/git-blame.vim'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'godlygeek/tabular'
  Plugin 'kien/tabman.vim'
  Plugin 'simeji/winresizer'
  Plugin 'junegunn/fzf'
  Plugin 'junegunn/fzf.vim'
  Plugin 'psliwka/vim-smoothie'
  Plugin 'nathanaelkane/vim-indent-guides'
  Plugin 'romainl/Apprentice'
call vundle#end()
filetype plugin indent on
"To ignore plugin indent changes, instead use:
"filetype plugin on


"===========================================================================
"---------------------------- COMMON SETTING -------------------------------
"===========================================================================
set number
set ruler
set autoread
set autowrite
set mouse=v
set scrolloff=5
set mousehide
set hlsearch
set incsearch
set ignorecase
set fdm=diff
set t_Co=256
set term=screen-256color
set splitright
set tabstop=2 shiftwidth=2 expandtab
set tags=tags;/
set encoding=utf-8
scriptencoding utf-8
set cmdheight=2
set textwidth=80
set updatetime=100
set laststatus=3
set statusline=%t%m\ [%l/%L]\ %y\ [%F]
set backspace=indent,eol,start
set iskeyword+=_,$,@,%,#
set wildmenu
set wildmode=longest:full,full
set autoindent
set smartindent
set background=dark
set nowrap
set tw=100
set formatoptions=tnmM
set cursorline
set cursorcolumn
set visualbell
set nofoldenable
set foldmethod=manual
set t_vb=
set showcmd
colorscheme apprentice


"===========================================================================
"------------------------------- KEYMAPPING --------------------------------
"===========================================================================
"---------------------------------------------------------------------------
"Default
"---------------------------------------------------------------------------
"move between the splitpanes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"set line number
nnoremap <F2> :set number<cr>
"set no line number
nnoremap <F3> :set nonumber<cr>
"set no highlight after finding
map      <F5> :noh<cr>
"yank a region in VIM without the cursor moving to the top of the block
vnoremap yy y']
"paste a region in VIM without the cursor moving to the top of the block
noremap pp p']
"exit INSERT mode without moving cursor (press fj or jf)
set timeoutlen=300
inoremap fj <ESC>l
inoremap jf <ESC>l
"---------------------------------------------------------------------------
"By Mapleader
"---------------------------------------------------------------------------
let mapleader = "c"
"open vimrc
nnoremap <leader>v   :vs ~/.vimrc<cr>
"set wrap
nnoremap <leader>w   :set wrap<cr>
"set nowrap
nnoremap <leader>nw  :set nowrap<cr>
"vsplit at topleft
nnoremap <leader>sl  :topleft vsplit
"vsplit at botright
nnoremap <leader>sr  :botright vsplit
"match whole word only
nnoremap <leader>/ /\<\><left><left>
"next tab
nnoremap <leader>l  :tabn<cr>
"previous tab
nnoremap <leader>h  :tabp<cr>
"create/open file by new tab
nnoremap <leader>nt :tabnew<space>
"set paste
nnoremap <leader>p  :set paste<cr>
"set no paste
nnoremap <leader>np :set nopaste<cr>



"===========================================================================
"--------------------------- PLUGIN SETTING --------------------------------
"===========================================================================
"---------------------------------------------------------------------------
"Plugin/Function Setting
"---------------------------------------------------------------------------
"NerdTree
""key mapping
map <F9> :NERDTree<cr>
""other setting
let NERDTreeIgnore = ['\~$', '\.swp$', '\.o']
let NERDTreeWinSize=30
let NERDTreeShowHidden=1
let g:NERDTreeDirArrows=0
let NERDTreeMapOpenInTab='<ENTER>'
"GitGutter
let g:gitgutter_max_signs = 10000
""key mapping
nmap ] <Plug>(GitGutterNextHunk)
nmap [ <Plug>(GitGutterPrevHunk)
"TabMan
""key mapping
let g:tabman_toggle = '<leader>mt'
let g:tabman_focus  = '<leader>mf'
""change the width of the TabMan window:
let g:tabman_width = 15
""change position
let g:tabman_side = 'left'
""other setting
let g:tabman_specials = 0
let g:tabman_number = 1
"TabMan
nnoremap <leader>s  :FZF<cr>
nnoremap <leader>sf :Files<space>
nnoremap <leader>sr :Files ~/.<cr>
"Vim-smoothie
let g:smoothie_enabled = 0
"Vim-indent
let g:indent_guides_enable_on_vim_startup = 1
nnoremap <leader>ig :IndentGuidesToggle<cr>
"---------------------------------------------------------------------------
"USER-CREATED PLUGIN/FUNCTION SETTING
"---------------------------------------------------------------------------
"align bracket of initiate module in HDL code
source ~/.vim/script/align_bracket.vim
"remove trailing space
source ~/.vim/script/remove_trailing_space.vim
"load header file and update information
autocmd bufnewfile *.sv :0r ~/.vim/header/_.sv
autocmd bufnewfile *.v :0r ~/.vim/header/_.v
autocmd bufnewfile *.csh :0r ~/.vim/header/_.csh
source ~/.vim/script/sample_stamp.vim
