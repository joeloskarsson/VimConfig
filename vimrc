"Some commands taken from http://marcgg.com/blog/2016/03/01/vimrc-example/

"Pathogen
execute pathogen#infect()

syntax enable

set colorcolumn=90 "Show 90 characters line
set number "Show line numbers

"Keep more in memory, faster
set hidden
set history=100

"Indention
filetype indent on
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

"Removes whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

"Highlight on search
set hlsearch

"Stop search with escape
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

"Highlight matching parenthesis
set showmatch

"Status row
set noshowmode
set noruler
set laststatus=2
set noshowcmd
set timeoutlen=1000 ttimeoutlen=0

"Disable arrow keys
nnoremap <Left> <Nop>
vnoremap <Left> <Nop>
inoremap <Left> <Nop>
nnoremap <Right> <Nop>
vnoremap <Right> <Nop>
inoremap <Right> <Nop>
nnoremap <Up> <Nop>
vnoremap <Up> <Nop>
inoremap <Up> <Nop>
nnoremap <Down> <Nop>
vnoremap <Down> <Nop>
inoremap <Down> <Nop>

"NerdTree
let NERDTreeShowHidden=1
let NERDTreeMapActivateNode='l'
let NERDTreeMapCloseChildren='h'
let NERDTreeMapQuit='q'
let NERDTreeQuitOnOpen=1
nmap t :NERDTreeToggle<CR>

"Fix weird arrow key issue
nmap OA <Nop>

"Always display git gutter
if exists('&signcolumn')  " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif

" Also gitgutter fix
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')

"Change update time
set updatetime=100
