set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle.
Plugin 'VundleVim/Vundle.vim'

" Vim plugins
" More plugins can be found at: vimawesome.com

" General plugins
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'

" Language support
Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'othree/html5.vim'
Plugin 'elzr/vim-json'
Plugin 'chrisbra/csv.vim'
Plugin 'vim-perl/vim-perl'
Plugin 'aming/vim-mason'

call vundle#end()
filetype plugin indent on
