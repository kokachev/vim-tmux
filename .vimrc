set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'dracula/vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Bundle 'chase/vim-ansible-yaml'
Plugin 'tranvansang/vim-close-pair'
Plugin 'vim-syntastic/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Bundle 'altercation/vim-colors-solarized.git'
Plugin 'christoomey/vim-tmux-navigator'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'wikitopian/hardmode'
Plugin 'tpope/vim-commentary'
"Plugin 'kana/vim-operator-user'
"Plugin 'rhysd/vim-operator-surround'
Plugin 'scrooloose/vim-slumlord'
Plugin 'aklt/plantuml-syntax'
call vundle#end()            " required
filetype plugin indent on    " required
syntax on

set background=dark
colorscheme solarized
let g:syntastic_yaml_checkers = ['yamllint']
"map <silent>sa <Plug>(operator-surround-append)
"map <silent>sd <Plug>(operator-surround-delete)
"map <silent>sr <Plug>(operator-surround-replace)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
set number
set relativenumber
autocmd FileType yaml let b:surround_{char2nr('o')} = "{{ \r }}"
autocmd FileType yaml setlocal commentstring=#\ %s
vnoremap . :normal .<CR>
set clipboard=unnamed
