" general settings
syntax on
set noshowmode " hide vim mode
set encoding=utf-8 " Default Encoding
set path+=** " Dateien für File-Autocomplete rekursiv suchen (edit, find, ...)
set wildmenu " Wildcard-Optionen anzeigen und per Tab auswählen
set showtabline=1 " Tabline anzeigen
set hidden " Buffer verstecken anstatt zu schließen
set listchars=space:·,eol:$ " explicitly show space characters
set list
set showmatch " highlight batching brackets
set nowrap
set autoindent
set copyindent
set autoread " autoread file when changed from outside

" search settings
set ignorecase " case sensitive search
set smartcase " case insensitive search if search string has contains letters
set incsearch " cursor jumps to next search result
set hlsearch " highlight search result

" tabstop config
set shiftround " shift to the next round tab stop
set shiftwidth=4 " set auto indent spacing.
set tabstop=4 " amount of space characters for tabstops
set expandtab " expand tab to spaces

" line number configuration
set number " show line numbers
set relativenumber " show relative line numbers
autocmd FocusLost * :set norelativenumber number " show absolute number on lost focus
autocmd FocusGained * :set relativenumber
autocmd InsertEnter * :set norelativenumber number " Show absolute line number in insert mode
autocmd InsertLeave * :set relativenumber

call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-surround' " text objects for surrounding characters like brackets
    Plug 'vim-airline/vim-airline' " pretty status bar
    Plug 'vim-airline/vim-airline-themes' " themes for airline
    Plug 'terryma/vim-multiple-cursors' " multiple cursors
    Plug 'tpope/vim-commentary' " code comments in vim
    Plug 'tpope/vim-fugitive' " git integration
    Plug 'airblade/vim-gitgutter' " show changed git lines
    Plug 'frazrepo/vim-rainbow' " colored matching brackets
    Plug 'scrooloose/nerdtree' " tree view
    Plug 'Xuyuanp/nerdtree-git-plugin' " show changed git files in tree view
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } "  uzzy finder
    Plug 'tmhedberg/matchit' " more matching objects like html-tags for %-motion
    Plug 'tpope/vim-unimpaired' " more matching objects like html-tags for %-motion
    Plug 'Raimondi/delimitMate' " auto close brackets
    Plug 'wellle/targets.vim' " useful text objects
    Plug 'sjl/badwolf' " a colorscheme
    Plug 'easymotion/vim-easymotion' " quick cursor movements across lines
    Plug 'kshenoy/vim-signature' " show marks in gutter
    Plug 'cj/vim-webdevicons' " icons for NerdTREE
    Plug 'nathanaelkane/vim-indent-guides' " shows indentation guides
    Plug 'godlygeek/tabular' " textual table alignment
    Plug 'plasticboy/vim-markdown' " markdown for vim
    Plug 'ycm-core/YouCompleteMe' " code completion
    Plug 'sheerun/vim-polyglot' " support for various languages like JS
    Plug 'dense-analysis/ale' " asynchronous linting
    Plug 'machakann/vim-highlightedyank' " highlight yanked text
call plug#end()

colorscheme badwolf

" blockcursor in CMDER:
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" Plugin-Settings
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1

let g:rainbow_active = 1

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_detect_paste=1

let g:ale_sign_error = '⚡'
let g:ale_sign_warning = '⚠️'

let NERDTreeShowHidden=1
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeGitStatusNodeColorization = 1
map <F2> :NERDTreeToggle<CR>

map <C-p> :FZF<CR>

" switch , and ; because of german keyboard layout
nnoremap , ;
nnoremap ; ,

" center search results

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" line break in normal mode
nnoremap K i<CR><Esc>

" better Esc mapping
imap jk <Esc>

" yank to EOL
nnoremap Y y$

" Simplified buffer and split management
nnoremap <C-Down> <C-W>+
nnoremap <C-Up> <C-W>-
nnoremap <C-Right> <C-W>>
nnoremap <C-Left> <C-W><
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" remapping square brackets because of german keyboard layout
nmap > [
nmap < ]
omap > [
omap < ]
xmap > [
xmap < ]

" dont override register on replacement of visual selection
vnoremap p "_dP

""" shortcuts for copy/paste with system clipboard
nnoremap <C-S-V> <C-V>

" Copy
nmap <C-C> "*yy
vmap <C-C> "*y
imap <C-C> <C-O> "*yy

" Cut
nmap <C-X> "*dd
vmap <C-X> "*d
imap <C-X> <C-O> "*dd

" Paste
nmap <C-V> "*p
vmap <C-V> "*p
imap <C-V> <C-R>*
cmap <C-V> <C-R>*
