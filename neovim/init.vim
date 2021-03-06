syntax on
set number relativenumber
set expandtab
set smarttab
set shiftwidth=4
set hidden
set noswapfile
set clipboard+=unnamedplus " use system clipboard(needs xclip)
" set colorcolumn=81
call matchadd('ColorColumn', '\%81v', 100)
highlight ColorColumn ctermbg=0
" leader = space, ; easier than :
let mapleader = " "
nnoremap ; :
vnoremap ; :
" quick save and quiting options
nnoremap <leader>g :w<CR>
vnoremap <leader>g :w<CR>
nnoremap <leader>q :wq<CR>
vnoremap <leader>q :wq<CR>
nnoremap <leader>m :w<CR>
" 0 = home nonwhite, - = end, 9 = home absolute
nnoremap 0 _
nnoremap _ 0
" hjkl to aueo
nnoremap a h
nnoremap u k
nnoremap e j
nnoremap o l
vnoremap a h
vnoremap u k
vnoremap e j
vnoremap o l
" replace overwritten commands
nnoremap h a
nnoremap H A
nnoremap k o
nnoremap K O
nnoremap l u
nnoremap L U
vnoremap h a
vnoremap H A
vnoremap k o
vnoremap K O
vnoremap l u
vnoremap L U
" faster jumps
nnoremap U 5k
nnoremap E 5j
vnoremap U 5k
vnoremap E 5j
" dragging lines
vnoremap <C-S-E> :m '>+1<CR>gv=gv
vnoremap <C-S-U> :m '<-2<CR>gv=gv
" clear search highlight
nnoremap <leader>c :noh<CR>
" moving between windows
nnoremap <A-a> <C-W>h
nnoremap <A-u> <C-W>k
nnoremap <A-e> <C-W>j
nnoremap <A-o> <C-W>l
" Use fzf to find files, ignoring git files
nnoremap <leader>n :GFiles<CR>
nnoremap <leader>t :Ag<CR>
nnoremap <leader>s :Files<CR>
" scroll through buffers
nnoremap <C-x> :bprev<CR>
nnoremap <C-c> :bnext<CR>
nnoremap <leader>d :bd<CR>
" some extras
map <F4> :source ~/.config/nvim/init.vim<CR>
map <F5> :w<CR>:!cargo run<CR>
map <F6> :setlocal spell! spelllang=en_us<CR>
" enable powerline chars and the top bar
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" whitespace config
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1
let g:better_whitespace_ctermcolor = 'darkred'
let g:strip_whitespace_confirm = 0
" some visual stuff
let g:rainbow_active = 1
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}
let g:indentLine_char = '┆'
" plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tomtom/tcomment_vim'
Plug 'frazrepo/vim-rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'ntpeters/vim-better-whitespace'
Plug 'terryma/vim-multiple-cursors'
Plug 'lilydjwg/colorizer'
Plug 'Yggdroot/indentLine'
call plug#end()
