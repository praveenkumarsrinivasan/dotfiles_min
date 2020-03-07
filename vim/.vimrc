" .vimrc
" Author: Praveen Kumar Srinivasan
" Email: praveen.sxi@gmail.com
"


" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %



" Enable VIM environment
set nocompatible

" Color Scheme to load
set t_Co=256
set background=dark

" Enable syntax highlighting
filetype plugin indent on
syntax enable

" Don’t add empty newlines at the end of files
set binary
set noeol

" Real programmers don't use TABs but spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

" Enable indent support
" Turn on autoindenting of blocks
set smartindent
" Retain indentation on next line
set autoindent
" copy the previous indentation on autoindenting
set copyindent
" insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab

" wrap at word
set lbr

" Allow the cursor to go in to 'invalid' places
set virtualedit=all

" Paste Mode
set pastetoggle=<F2>
" <C-r>+ - os paste

" reload file when changes happen in other editors
set autoread
set autowrite

" Don't update the display while executing macros
set lazyredraw

" Switch between buffers without saving
set hidden

" make backspace behave like normal again
set backspace=indent,eol,start

" Disable backup and swap files - they trigger too many events for file system watchers
" set nobackup
" set nowritebackup
" set noswapfile

" Highlight current line
"set cursorline "redraw is slow

" Improving code completion
"set complete=.,w,b,u,t
"set completeopt=longest,menuone,preview

" Encoding
set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac

set foldmethod=syntax
" fold minimum lines
set fml=1
" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" History Buffer Setting
set history=1000
set undolevels=1000
set undofile

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Show tab and end on line characters
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set showbreak=↪

" Always show status line
set laststatus=2

" Enable mouse selection
set mouse=a

" show line numbers
set number

" all windows not same size after split or close
set noequalalways

" Display as much as possible of the last line
set display+=lastline

"Square up visual selections...
set virtualedit=block

" Enhance command-line completion
set wildmenu
" Show list of completions, and complete as much as possible, then iterate full completions
set wildmode=list:longest,list:full

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit

set wildignore+=*.luac                           " Lua byte code

set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code

set wildignore+=*.orig                           " Merge resolution files


let mapleader = ","
let maplocalleader = "\\"

" Retab the file
nnoremap <leader>rt :retab<CR>:w!<CR>



" open new window
nmap <leader>wh :topleft  vnew<CR>
nmap <leader>wl :botright vnew<CR>
nmap <leader>wk :topleft  new<CR>
nmap <leader>wj :botright new<CR>

" open new buffer
nmap <leader>nh :leftabove  vnew<CR>
nmap <leader>nl :rightbelow vnew<CR>
nmap <leader>nk :leftabove  new<CR>
nmap <leader>nj :rightbelow new<CR>

nmap <leader>sh :leftabove  vs %<CR>
nmap <leader>sl :rightbelow vs %<CR>
nmap <leader>sk :leftabove  sb %<CR>
nmap <leader>sj :rightbelow sb %<CR>

" Open new file in new vertical split window
noremap <leader>v :rightbelow vnew<cr>

" To open a new empty buffer
nmap <leader>T :enew<cr>

" Move between Buffers
nmap <leader>l :bnext<CR>            " Move to the next buffer
nmap <leader>h :bprevious<CR>        " Move to the previous buffer

nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
nnoremap <Leader>g :e#<CR> " last used buffer

" Wrap
nnoremap <leader>W :set wrap!<cr>

" Clean trailing whitespace
nnoremap <leader>ww :%s/\s\+$//<cr>:let @/=''<CR>

" easier moving between tabs
"map <Leader>n <esc>:tabprevious<CR>
"map <Leader>m <esc>:tabnext<CR>

" select all
map <Leader>a ggVG


" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

"Delete the current buffer
nmap <leader>bd :bd<CR>


" Visually select last edited/pasted text
" http://vimcasts.org/episodes/bubbling-text/
nnoremap <leader>gp `[v`]


" Exit back to normal mode
inoremap jj <ESC>
inoremap kk <ESC>
inoremap lll <ESC>
inoremap hh <ESC>
cmap jj <esc>



" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za

" Make BS/DEL work as expected in visual modes (i.e. delete the selected text)...
vmap <BS> x

" gi already moves to 'last place you exited insert mode', so we'll map gI to
" something similar: move to last change
nnoremap gI `.

" Move by display lines.
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" Easy buffer navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Insert Mode Completion
inoremap <c-f> <c-x><c-f>
inoremap <c-]> <c-x><c-]>
inoremap <c-l> <c-x><c-l>

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap * *zz
nnoremap # #zz

" Same when jumping around
nnoremap g* g*zz
nnoremap g# g#zz
nnoremap g; g;zz
nnoremap g, g,zz
nnoremap <c-o> <c-o>zz

" Search and replace shortcut
noremap sg :%s///g<LEFT><LEFT>
vnoremap sg :s///g<LEFT><LEFT>

" Make arrow keys move visual blocks around
vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()
vmap  <expr>  <C-D>    DVB_Duplicate()

" Convert to/from spaces/tabs...
nmap <C-T>s :set   expandtab<CR>:%retab!<CR>
nmap <C-T>t :set noexpandtab<CR>:%retab!<CR>

" Editing readonly files and saving them
command! W :execute ':silent w !sudo tee % > /dev/null' | :edit!
""cmap W!! w !sudo tee % >/dev/null
command! Wq :execute ':W' | :q
command! WQ :Wq

" Select within fold
nnoremap viz v[zo]z$
