" file encodings
set fileencodings=ucs-dom,utf-8,gbk,latin1
"
" if compatible vim to vi
set nocompatible
"
" syntax highlight
syntax on
"
" auto indent, set ai
set autoindent
"
" show line number
set nu
"
" smart indent
set si
"
" tab to space
set ts=4
"
" soft tab to space
set sts=4
"
" shift width
set sw=4
"
" text width
set tw=80
"
" expandtab
set et
"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"
" repos from github
"
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" 
" repos from vim-scripts
"
Bundle 'a.vim'
Bundle 'vcscommand.vim'
"
" Brief help
" :BundleList            - list configured bundles
" :BundleInstall(!)      - install(update) bundles
" :BundleSearch(!) foo   - search(or refresh cache first) for foo
" :BundleClean(!)        - confirm(or auto-approve) removal of unused bundles
"
" for ctags
" set tags=/home/test/tags
