
set nocompatible                   " Use vim settings, rather then vi settings

set clipboard=^unnamed,unnamedplus " normal OS clipboard interaction
set noswapfile                     " do not write swap files
set hidden                         " hide buffers instead of closing them this
                                   "    means that the current buffer can be
                                   "    put to background without being written
set laststatus=2                   " tell VIM to always put a status line in
set showmode                       " always show what mode we're currently in
set visualbell                     " don't beep
set mouse=a                        " enable using the mouse if supported

set number                         " always show line numbers
set ruler                          " displays the line/column number in status

set tabstop=2                      " a tab is two (2) spaces
set shiftwidth=2                   " use two (2) spaces while auto-indenting
set softtabstop=2                  " remove two (2) spaces when deleting
set expandtab                      " expand tabs by default
set autoindent                     " always set auto-indenting on
set smartindent                    " does the right thing (mostly)

"set list                          " show invisibles
set listchars=eol:¬,tab:>-         " invisible characters

set ignorecase                     " ignore case when searching
set smartcase                      " match case if any uppercase is used
set incsearch                      " show search matches as you type
"set showmatch                     " set show matching parenthesis
set hlsearch                       " highlight search terms

set nowrap                         " don't wrap lines
"set textwidth=80                  " automaticaly wrap a line at 80 charecters
set colorcolumn=81                 " show a colored column at 81 characters

" Theme
syntax on
let g:solarized_termcolors=256
set background=dark
colorscheme solarized


" Spellcheck
nmap <silent> <leader>s :set spell!<CR>
set spelllang=en_gb

" Keyboard mappings
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>         " clear search
nnoremap <silent> <F5> :%s/\s\+$//<cr>:let @/=''<CR>      " strip trailing ws
nnoremap <silent> <leader>W :%s/\s\+$//<cr>:let @/=''<CR> " strip trailing ws

