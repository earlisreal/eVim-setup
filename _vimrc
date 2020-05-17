source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
"behave mswin

" Mapping ESC
:imap jk <Esc>
:imap kj <Esc>

" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" NerdTree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Solarized
syntax enable
set background=dark
colorscheme solarized

set number
set linebreak
set showbreak=+++
set textwidth=100
"set showmatch

set autochdir

 " Searching
set hlsearch
set smartcase
set ignorecase
set incsearch
 
" Indention
set autoindent
set shiftwidth=4
set smartindent
set tabstop=4
set ruler
 
set undolevels=1000
set backspace=indent,eol,start

" Look and Feel
set guifont=courier_new:h11:b
"set guifont=courier_new:h10

set lines=35
set columns=100

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

" Tab navigation like Firefox.
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
nnoremap <C-w>     :tabclose<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
inoremap <C-w>     <Esc>:tabclose<CR>

" Removing Undo File
:set noundofile
:set nobackup

" Moving to Windows
:nmap <silent> <C-h> :wincmd h<CR>
:nmap <silent> <C-j> :wincmd j<CR>
:nmap <silent> <C-k> :wincmd k<CR>
:nmap <silent> <C-l> :wincmd l<CR>

" Ehelper
:map <F6> :EhelperCompileRun<CR>
:map <F5> :EhelperRun<CR>
:map <F10> :EhelperCompileRunTestCases<CR>
:map <F11> :EhelperRunTestCases<CR>
:map <F9> :EhelperCompile<CR>
:map <F12> :EhelperToggleOutput<CR>
:map <F8> :EhelperToggleTests<CR>
let g:allow_time_limit = 0
