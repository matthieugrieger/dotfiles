set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Vim plugins
" More plugins can be found at: vimawesome.com

" General plugins
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
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

" vim-colors-solarized configuration
syntax enable
set background=dark
colorscheme solarized

" Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Airline configuration
set laststatus=2
let g:airline_theme = 'solarized'
let g:airline_solarized_bg = 'dark'
