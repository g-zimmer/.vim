set number " zeilen nummern anzeigen
set relativenumber " relative Zeilen nummern anzeigen
set showmode " vim modus unten anzeigen
set ignorecase " case bei suche ignorieren
set smartcase " wenn Großbuchstabe enthalten dann case nicht ignorieren in suche
set incsearch " cursor beim tippen zu nächstem suchergebnis springen lassen
set shiftround " Shift to the next round tab stop. 
set hlsearch " Highlight search result
set shiftwidth=4 " Set auto indent spacing.

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'frazrepo/vim-rainbow'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tmhedberg/matchit'
Plug 'Raimondi/delimitMate'

call plug#end()

" Blockcursor in CMDER:
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"


" ---- CUSTOM KEY MAPPINGS ----
" Tauschen von , und ;
nnoremap , ;
nnoremap ; ,

" jk auf ESC im Insert mode mappen und ESC sperren
inoremap jk <esc>
inoremap <esc> <NOP>

" NerdTree
map <F2> :NERDTreeToggle<CR>

" Bessere Bewegungen für EOL/BOL
nnoremap B ^
onoremap B ^
nnoremap E $
onoremap E $

" Suchergebnisse in Bildschirmmitte
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
