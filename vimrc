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
Plugin 'morhetz/gruvbox'

call vundle#end()            " required
filetype plugin indent on    " required

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode=''

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let mapleader = ','

let g:tex_conceal = ''

set backupdir=/tmp
set directory=/tmp

if has("gui_running")
  " Gvim
  if has("gui_gtk2") || has("gui_gtk3")
    " Linux GUI
    set guifont=Iosevka\ Term\ 12
  elseif has("gui_win32")
    " Win32/64 GVim
    set guifont=Iosevka\ Term\ 12
  elseif has("gui_macvim")
    " MacVim
    set macligatures
    set guifont=PragmataProLiga-Regular:h14
  else
    echo "Unknown GUI system!!!!"
  endif
else
  " Terminal vim
endif

let g:tex_flavor = 'latex'

autocmd Filetype tex setlocal colorcolumn=80
autocmd Filetype tex setlocal textwidth=80
autocmd Filetype tex setlocal formatoptions=cqt
autocmd Filetype tex setlocal tabstop=4
autocmd Filetype tex setlocal shiftwidth=4
autocmd Filetype tex setlocal expandtab
autocmd Filetype tex setlocal smartindent

autocmd Filetype text setlocal colorcolumn=80
autocmd Filetype text setlocal textwidth=80
autocmd Filetype text setlocal formatoptions=cqt
autocmd Filetype text setlocal tabstop=4
autocmd Filetype text setlocal shiftwidth=4
autocmd Filetype text setlocal expandtab
autocmd Filetype text setlocal smartindent

set clipboard^=unnamed,unnamedplus

colorscheme gruvbox
set termguicolors

syntax on
