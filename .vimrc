" general settings
syntax on
set noshowmode " hide vim mode in bottom line
set encoding=utf-8
set path+=** " search files recursive for auto completion of severaĺ commands (edit, find, ...)
set wildmenu " show wildcard options, choose via tab key
set wildmode=longest,list,full " wildmenu config
set showtabline=1 " show tabline
set hidden " hide buffer instead of closing
" set listchars=space:· " explicitly show space characters
set showbreak=↪\ 
set listchars=tab:→\ ,eol:↲,space:·,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set list " turn visualization of list chars on
set showmatch " highlight batching brackets
set autoread " autoread file when changed from outside
set fillchars+=vert:│
set noswapfile " dont create swap-files on opening files
set lazyredraw " dont redraw screen for each change on macro execution

" search settings
set ignorecase " case sensitive search
set smartcase " case insensitive search if search string has contains letters
set incsearch " cursor jumps to next search result
set hlsearch " highlight search result

" tabstop and indentation config
set shiftround " shift to the next round tab stop
set shiftwidth=4 " set auto indent spacing.
set tabstop=4 " amount of space characters for tabstops
set expandtab " expand tab to spaces
set autoindent " copy indent from current line when starting new line
set copyindent " apply indentation for pasted text

" Mouse settings
set mouse=a

" line number configuration
set number " show line numbers
set relativenumber " show relative line numbers
autocmd FocusLost * :set norelativenumber number " show absolute number on lost focus
autocmd FocusGained * :set relativenumber
autocmd InsertEnter * :set norelativenumber number " Show absolute line number in insert mode
autocmd InsertLeave * :set relativenumber

call plug#begin('~/.vim/plugged')
" text objects
    Plug 'tpope/vim-surround' " text objects for surrounding characters like brackets
    Plug 'kana/vim-textobj-user' " simplify custom text object creation
    Plug 'kana/vim-textobj-line' " text objects for current line (il/al)
    Plug 'kana/vim-textobj-function' " text objects for functions (if, af, iF, aF)
    Plug 'Julian/vim-textobj-variable-segment' " text objects for camel humps (iv/av)
    Plug 'wellle/targets.vim' " useful text objects
    Plug 'bkad/CamelCaseMotion' " motions to move over camel humps
" UI
    Plug 'vim-airline/vim-airline' " pretty status bar
    Plug 'vim-airline/vim-airline-themes' " themes for airline
    Plug 'airblade/vim-gitgutter' " show changed git lines
    Plug 'terryma/vim-multiple-cursors' " multiple cursors
    Plug 'sjl/badwolf' " a colorscheme
    Plug 'cj/vim-webdevicons' " icons for NerdTREE
" languages
    Plug 'frazrepo/vim-rainbow' " colored matching brackets
    Plug 'sheerun/vim-polyglot' " support for various languages like JS
    Plug 'dense-analysis/ale' " asynchronous linting
    Plug 'tpope/vim-commentary' " code comments in vim
    Plug 'plasticboy/vim-markdown' " markdown for vim
    Plug 'ycm-core/YouCompleteMe' " code completion
" utils
    Plug 'tpope/vim-fugitive' " git integration
    Plug 'preservim/nerdtree' " tree view
    Plug 'Xuyuanp/nerdtree-git-plugin' " show changed git files in tree view
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } "  uzzy finder
    Plug 'tmhedberg/matchit' " more matching objects like html-tags for %-motion
    Plug 'tpope/vim-unimpaired' " more matching objects like html-tags for %-motion
    Plug 'Raimondi/delimitMate' " auto close brackets
    Plug 'alvan/vim-closetag' " auto close xml tags
    Plug 'kshenoy/vim-signature' " show marks in gutter
    Plug 'nathanaelkane/vim-indent-guides' " shows indentation guides
    Plug 'godlygeek/tabular' " textual table alignment
    Plug 'machakann/vim-highlightedyank' " highlight yanked text
    Plug 'tpope/vim-abolish' " changing cases and more.
    Plug 'tommcdo/vim-exchange' " swapping text
    Plug 'thinca/vim-visualstar' " search for visually selected text via */#
call plug#end()

colorscheme badwolf

" blockcursor in CMDER:
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" Space as leader
nnoremap <Space> <Nop>
let mapleader = " "

" Plugin-Settings
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1

let g:rainbow_active = 1

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_sign_error = '⚡'
let g:ale_sign_warning = '⚠️'

let NERDTreeShowHidden=1
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeGitStatusNodeColorization = 1

map <F2> :NERDTreeToggle<CR>

map <C-p> :FZF<CR>

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_new_list_item_indent = 0

let g:closetag_filenames = '*.html,*.xml'

" mappings for CameCaseMotion plugin
map <silent> W <Plug>CamelCaseMotion_w
map <silent> B <Plug>CamelCaseMotion_b
map <silent> E <Plug>CamelCaseMotion_e
map <silent> gE <Plug>CamelCaseMotion_ge

omap <silent> iW <Plug>CamelCaseMotion_iw
xmap <silent> iW <Plug>CamelCaseMotion_iw
omap <silent> iB <Plug>CamelCaseMotion_ib
xmap <silent> iB <Plug>CamelCaseMotion_ib
omap <silent> iE <Plug>CamelCaseMotion_ie
xmap <silent> iE <Plug>CamelCaseMotion_ie

" better mappings on german keyboard
map ö [
map ä ]
map ß /
map ü <C-]>
map Ö {
map Ä }

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
nnoremap <C-Down> <C-W>5+
nnoremap <C-Up> <C-W>5-
nnoremap <C-Right> <C-W>5>
nnoremap <C-Left> <C-W>5<

" dont override register on replacement of visual selection
vnoremap p "_dP

" reload vimrc
nnoremap <F5> :so $MYVIMRC<CR>

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
