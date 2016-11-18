set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

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

" Json formatter
vnoremap <c-j> :!python -m json.tool<cr>

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

set nobackup
set noswapfile



test
