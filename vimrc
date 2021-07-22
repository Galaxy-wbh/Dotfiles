" show relative and absolute line number 
set number 
set relativenumber
" syntax highlight
syntax on
" show mode in the bottom
set showmode
" support mouse
set mouse=a
" utf-8 encoding
set encoding=utf-8 
" support full color
set t_Co=256
" disable the default vim startup message
set shortmess+=I
" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2
" configs about indent
filetype indent on "缩进相关
set autoindent 
" share clipboard with mac
set clipboard=unnamed 
" support hidden buffer
set hidden
" make search case-insensitive
set ignorecase
set smartcase
" enable searching as typing
set incsearch
" unbind some useless/annoying default key bindings
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.
" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=
" folding the line
set wrap
set linebreak
" show '->' in the line where fold
" set showbreak=->
" won't fold in '_'
set breakat-=_
" choose '(' highlight ')'
set showmatch
" uncompatible with vi 
set nocompatible "与vi不兼容
" config about baskspace
set backspace=indent,eol,start 



" plugin config
filetype plugin on
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'preservim/nerdtree'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" split window in right and move the cursor to right window 
map sl :set splitright<CR>:vsplit<CR> 
" split window in bottom and move the cursor to bottom window
map sj :set splitbelow<CR>:split<CR> " 往下面分屏，光标移动到下面
" ls pwd in the right window
map tt :NERDTreeToggle<CR>

" move to different vim window
map <SPACE>k <C-w>k
map <SPACE>j <C-w>j
map <SPACE>l <C-w>l
map <SPACE>h <C-w>h


" stop use up/down/left/right in normal mode
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
