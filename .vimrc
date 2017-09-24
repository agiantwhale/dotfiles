set guifont=Inconsolata:h14
set nocompatible
set nowrap
set number
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sleuth'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'Yggdroot/indentLine'
Plugin 'lervag/vimtex'
Plugin 'mattn/emmet-vim'
Plugin 'chriskempson/base16-vim'

call vundle#end()            " required
filetype plugin indent on    " required

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode=''

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let mapleader = ','

let g:tex_conceal = ''

function! EnsureDirExists (dir)
  if !isdirectory(a:dir)
    call mkdir(a:dir, "p")
  endif
endfunction

call EnsureDirExists($HOME . '/.vimbak')
call EnsureDirExists($HOME . '/.vimswap')
call EnsureDirExists($HOME . '/.vimundo')

set backupdir=~/.vimbak
set directory=~/.vimswap
set undodir=~/vimundo
set undofile
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed
else
  set clipboard=unnamedplus
endif

autocmd Filetype tex setlocal cc=80
autocmd Filetype tex setlocal textwidth=80
autocmd Filetype tex setlocal tabstop=4

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

syntax on
