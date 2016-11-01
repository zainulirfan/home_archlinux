set number
set relativenumber
set laststatus=2
set t_Co=256
set mouse=a
set confirm
set hidden
syntax enable
set hlsearch
set incsearch

" Setting for Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin Manager
Plugin 'VundleVim/Vundle.vim'

" List Plugin
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mbbill/undotree'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-commentary'
Plugin 'terryma/vim-expand-region'
Plugin 'bufexplorer.zip'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'mhinz/vim-startify'
Plugin 'osyo-manga/vim-over'
Plugin 'rakr/vim-one'

"NERDTreePosition
let g:NERDTreeWinPos='right'
let g:NERDTreeWinSize= 20
"NERDTree File
let g:NERDTreeFileExtensionHighlightFullName = 1
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
"set encoding=utf-8
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeDisableFileExtensionHighlight = 1
let g:NERDTreeDisableExactMatchHighlight = 1
let g:NERDTreeDisablePatternMatchHighlight = 1
let NERDTreeHijackNetrw = 0

" Colorscheme
"colorscheme Benokai 
"colorscheme molokai 
colorscheme github 
"colorscheme atom 

"Vim-Over Setting Here
nmap <space>o :OverCommandLine<CR>
let g:over_enable_auto_nohlsearch = 1

"Airline-tabline Setting Here
let g:airline#extensions#tabline#enabled = 1

" Goyo Setting Here
nmap <space>g :Goyo<CR>
nmap <space>gg :Goyo!<CR>
let g:goyo_width=100
let g:goyo_height=100

" BufExplorer Setting Here
nnoremap <space>n :BufExplorerHorizontalSplit<CR>
let g:bufExplorerHorzSize=10
let g:bufExplorerSplitRight=1
"let g:bufExplorerSplitBelow=1

" UndoTree
nmap <space>. :UndotreeToggle<CR>

" Nerd Tree
 autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"close
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='papercolor'
"let g:airline_theme='wombat'
"let g:airline_theme='bubblegum'
"let g:airline_theme='molokai'
"let g:airline_theme='sol'

"One Theme Here
"let g:airline_theme='one'
"set background=dark

" Emmet Setting
nmap <space>, <C-y>,

" Mapping
nmap nt :NERDTreeToggle<CR>
nmap wq :w<CR>
nmap qi :q<CR>
nmap Q :q!<CR>
nmap la :ls<CR>
nmap bq :bd<CR>
nmap <space>b :bd<space>
nmap nm :enew<CR>
nmap <space>s :bnex<CR>
nmap <space>v :bprevious<CR>
nmap <space>a :CtrlP<CR>

nmap <space>p :PluginInstall<CR> 
nmap <space>m :setf<space>
nmap <space> :
imap <space><space> <esc>
nmap <space>so :source %<CR>
nmap <space>ve :e ~/.vimrc<CR>
nmap <space>ve! :e! ~/.vimrc<CR>
nmap <C-x> <C-w>
nmap <space>q q:
nmap <space>/ q/
nmap htdocs :cd /opt/lampp/htdocs

"Unimpaired
nmap <C-Up> [e
nmap <C-Down> ]e
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Netrw
nmap <space>vx :Vexplore<CR>
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_slit = 1
let g:netrw_winsize = 25

"SETTING FOR TMUX STATUS LINE HERE
"Plugin 'edkolev/tmuxline.vim'
"Plugin 'christoomey/vim-tmux-navigator'
"let g:tmuxline_powerline_separators = 0
"Tmuxline airline

call vundle#end()
filetype plugin indent on
