set number
set relativenumber
set laststatus=2
set t_Co=256
set mouse=a
set confirm
set hidden
syntax enable

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

" Colorscheme
colorscheme Benokai 

" UndoTree
nmap <space>. :UndotreeToggle<CR>

" Nerd Tree
"open otomatic
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"close
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='papercolor'

" Emmet Setting
nmap <space>, <C-y>,

" Mapping
nmap nt :NERDTreeToggle<CR>
nmap wq :w<CR>
nmap q :q<CR>
nmap Q :q!<CR>
nmap la :ls<CR>
nmap bq :bd<CR>
nmap <space>b :bd<space>
nmap zd :enew<CR>
nmap zs :bnex<CR>
nmap zc :bprevious<CR>
nmap za :CtrlP<CR>

nmap <space>p :PluginInstall<CR> 
nmap <space>m :setf<space>
nmap <space> :
imap <space><space> <esc>
nmap <space>c :PluginInstall<CR>
nmap <space>so :source %<CR>
nmap <space>ve :e ~/.vimrc<CR>
nmap <space>ve! :e! ~/.vimrc<CR>
nmap <C-c> <C-w>

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

call vundle#end()
filetype plugin indent on
