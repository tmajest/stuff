execute pathogen#infect()

set hlsearch
colorscheme codeschool
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar

nnoremap <a-j> 4<c-d>
nnoremap <a-k> 4<c-u>
vnoremap <a-j> 4<c-d>
vnoremap <a-k> 4<c-u>

" Visual repeat
vnoremap . :normal .<cr>

" Buffer stuff
nnoremap <c-tab> :bn<cr>
vnoremap <c-tab> :bn<cr>

set shiftwidth=4
set softtabstop=4
set expandtab

set guifont=Consolas
set ignorecase
set fileformats=dos
set number
set iskeyword+=-
set iskeyword+=_
set hidden

set splitright
set splitbelow

" Nerd tree
nnoremap <c-n> :NERDTreeToggle<cr>
vnoremap <c-n> :NERDTreeToggle<cr>
