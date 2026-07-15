" Vim 8.2+ configuration. Plugins use Vim's built-in package support:
"   ~/.vim/pack/plugins/start/fzf
"   ~/.vim/pack/plugins/start/fzf.vim

set nocompatible
scriptencoding utf-8
set encoding=utf-8

let mapleader = ','
let maplocalleader = '\<Tab>'

set history=256
set timeoutlen=250
set clipboard+=unnamed
set shiftround
set tags=.git/tags;$HOME
set modeline modelines=5
set autowrite autoread hidden
set nobackup nowritebackup noswapfile
set directory=/tmp//

set hlsearch ignorecase smartcase incsearch
set nowrap textwidth=0
set formatoptions+=o formatoptions-=rt
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab
set autoindent cindent
set indentkeys-=0# cinkeys-=0#
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do,for,switch,case

syntax enable
filetype plugin indent on
set mouse=a mousehide
set number relativenumber
set showmatch matchtime=2
set wildmode=longest,list
set completeopt-=preview
set novisualbell noerrorbells
set laststatus=2 shortmess=atI showcmd
set foldenable foldmethod=marker foldlevel=100
set foldopen=block,hor,tag,percent,mark,quickfix
set virtualedit=block
set splitbelow splitright
set nolist
set listchars=tab:\ \ ,eol:¬,trail:·,extends:»,precedes:«

if has('gui_running')
  set guioptions=cMg
  if has('mac')
    set guifont=Andale\ Mono:h13
    set macmeta
  else
    set guifont=Terminus:h16
  endif
endif

inoremap jk <Esc>
inoremap kj <Esc>
nnoremap <silent> <F12> :set invlist<CR>
nnoremap <leader>c mz"dyy"dp`z
vnoremap <leader>c "dymz"dP`z
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <localleader>- :bdelete<CR>
nnoremap <localleader>-- :bdelete!<CR>
nnoremap <leader>. :let @+=expand('%:p').':'.line('.')<CR>
nnoremap <leader>/ :let @+=expand('%:p:h')<CR>
nnoremap <S-CR> A<CR><Esc>
nnoremap <leader>E :Explore<CR>
nnoremap <leader>EE :Vexplore!<CR><C-W>=
nnoremap <C-k> <C-W><C-k>
nnoremap <C-j> <C-W><C-j>
nnoremap <C-H> <C-W><C-h>
nnoremap <C-L> <C-W><C-l>
nnoremap <leader>V :vnew<CR>
xnoremap p pgvy
nnoremap <silent> <D-c> yy
nnoremap <silent> <D-w> :bdelete<CR>
nnoremap <C-s> :update<CR>
vnoremap <C-s> <C-C>:update<CR>
inoremap <C-s> <C-O>:update<CR>
nnoremap <leader>2h :runtime! syntax/2html.vim<CR>
nnoremap <leader>n :nohlsearch<CR>
nnoremap <leader>v :tabedit ~/dotfiles/.vimrc<CR>
nnoremap <leader>vr :source $MYVIMRC<CR>
nnoremap <leader>m :make<CR>
nnoremap <leader>mi :make install<CR>
nnoremap <leader>mc :make clean<CR>
nnoremap <leader>x :!./%<CR>
nnoremap <leader>l :vsplit ~/log.md<CR>
nnoremap <leader>p :!pdflatex %<CR>

function! AppendModeline() abort
  let l:modeline = printf(' vim: set ts=%d sw=%d tw=%d %set :',
        \ &tabstop, &shiftwidth, &textwidth, &expandtab ? '' : 'no')
  call append(line('$'), substitute(&commentstring, '%s', l:modeline, ''))
endfunction
nnoremap <silent> <leader>ml :call AppendModeline()<CR>

augroup dotfiles
  autocmd!
  autocmd BufRead,BufNewFile *.go setlocal tabstop=2 softtabstop=2 noexpandtab smarttab
  autocmd BufRead,BufNewFile Gemfile,Rakefile,Capfile,*.rake,config.ru setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab
  autocmd BufRead,BufNewFile *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab
  autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en
  autocmd BufRead,BufNewFile *.local setlocal filetype=sh
  autocmd BufRead,BufNewFile *.md,*.mkd,*.markdown setlocal filetype=markdown
  autocmd BufRead,BufNewFile *.scala setlocal filetype=scala
  autocmd BufReadPost COMMIT_EDITMSG,*/COMMIT_EDITMSG setlocal filetype=gitcommit nomodeline | normal! 1G
  autocmd BufWinEnter *.txt if &filetype ==# 'help' | wincmd H | nnoremap <buffer> q :quit<CR> | endif
augroup END

" Load native packages before checking for fzf.vim commands.
packloadall

if exists(':Files')
  nnoremap <leader>t :Files<CR>
  nnoremap <leader>b :Buffers<CR>
  nnoremap <leader>g :Rg<CR>
endif

set background=dark
let g:solarized_termcolors=256
colorscheme solarized

if !empty($CMSSW_BASE)
  execute 'set path+=' . fnameescape($CMSSW_BASE . '/src')
  if !empty($CMSSW_RELEASE_BASE)
    execute 'set path+=' . fnameescape($CMSSW_RELEASE_BASE . '/src')
  endif
  nnoremap <leader>B :!cd "$CMSSW_BASE/src" && scram b<CR>
  set complete-=i
endif
