execute pathogen#infect()

" Indentation
set tabstop=4		        " number of visual spaces per tab
set softtabstop=4	        " number of spaces per tab when editing
set expandtab		        " makes tabs spaces

" UI
set number		            " show line numbers
set showcmd		            " show previous command in bottom bar
set cursorline		        " highlight current line
set wildmenu		        " visual autocomplete for commands
set lazyredraw		        " only redraw when necessary
set showmatch		        " hightlight matching brackets and parentheses

" Searching
set incsearch		        " search as characters are entered

" Plugins

"" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"" Airline
let g:airline_theme='minimalist'
let g:airline_solarized_bg='dark'

"" Indent Guides
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" Colors
syntax enable		                " enable syntax highlighting
colorscheme material                " enable colorscheme
hi Normal guibg=NONE ctermbg=NONE   " make background transparent
