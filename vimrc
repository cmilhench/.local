set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"http://stackoverflow.com/questions/20186975/vim-mac-how-to-copy-to-clipboard-without-pbcopy
set clipboard^=unnamed
set clipboard^=unnamedplus

syntax on
set hidden
set laststatus=2
set number
set ruler
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
"set listchars=eol:¬,tab:>-
set hlsearch
set incsearch
set background=dark
colorscheme monochrome

" Find all TODO statements
command! -nargs=* TODO vimgrep /TODO/g *.* **/*.*













nmap <silent> <leader>s :set spell!<CR>
set spelllang=en_gb

" Keyboard mappings
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <silent> <leader><space> :NERDTreeToggle<CR>
nnoremap <silent> <leader>gb :GoBuild<CR>
nnoremap <silent> <leader>gt :GoTest<CR>
nnoremap <silent> <leader>gl :GoMetaLinter<CR>
nnoremap <silent> <leader>gr :GoRun<CR>
nnoremap <silent> <leader>ds :GoToggleBreakpoint<CR>
nnoremap <silent> <leader>dd :GoDebug<CR>

" Stop Ex mode forever!
nnoremap Q <nop>

" File extension
set suffixesadd+=.js

" format with goimports instead of gofmt
let g:go_fmt_command = "goimports"

" turn highlighting on
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 2

" use ascii charecters in nerd tree
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = 'v'

