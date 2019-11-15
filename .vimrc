set number " zeilen nummern anzeigen
set relativenumber " relative Zeilen nummern anzeigen
set showmode " vim modus unten anzeigen
set ignorecase " case bei suche ignorieren
set smartcase " wenn Großbuchstabe enthalten dann case nicht ignorieren in suche
set incsearch " cursor beim tippen zu nächstem suchergebnis springen lassen
set shiftround " Shift to the next round tab stop. 
set hlsearch " Highlight search result
set shiftwidth=4 " Set auto indent spacing.
set tabstop=4 " Anzahl Leerzeichen um einen Tabstop darzustellen
set expandtab " Expand tab to spaces
set showmatch " show batching Brackets

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround' " Text-Objects für Klammern, Anführungszeichen etc.
Plug 'vim-airline/vim-airline' " Schickere Statusbar
Plug 'terryma/vim-multiple-cursors' " Mehrere Cursor
Plug 'tpope/vim-commentary' " Code-Kommentare togglen
Plug 'vim-airline/vim-airline-themes' " Themes für die Airline
Plug 'tpope/vim-fugitive' " Git-Integration
Plug 'airblade/vim-gitgutter' " Geänderte Zeilen im Gutter anzeigen
Plug 'frazrepo/vim-rainbow' " Zusammen gehörende Klammern einfärben
Plug 'scrooloose/nerdtree' " Tree-View für vim
Plug 'Xuyuanp/nerdtree-git-plugin' " Git-Änderungen in Tree-View anzeigen
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzzy-Finder
Plug 'tmhedberg/matchit' " Mehr Funktionalität für die %-Motion. (HTML-Tags, If-Then-Else etc.)
Plug 'Raimondi/delimitMate' " Automatisches Einfügen schließender Klammern etc
Plug 'wellle/targets.vim' " Mehr Text-Objects auf denen man arbeiten kann, z.B. nächste Klammern
Plug 'vim-scripts/sablecc.vim' " Syntax-Highlighting für SableCC-Grammatiken
Plug 'sjl/badwolf' " Colorscheme fürs Syntax-Highlighting 
Plug 'easymotion/vim-easymotion' " Gezielte Cursorbewegungen übere mehrere Zeilen hinweg
Plug 'nathanaelkane/vim-indent-guides' " Hilfslinien für Einrückungen
Plug 'kshenoy/vim-signature' " Marks im Gutter anzeigen.

call plug#end()

" Config für Indent-Guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1

" Blockcursor in CMDER:
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"


" ---- CUSTOM KEY MAPPINGS ----
" Tauschen von , und ;
nnoremap , ;
nnoremap ; ,

" NerdTree
map <F2> :NERDTreeToggle<CR>

" Suchergebnisse in Bildschirmmitte
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" Line-Break in Normal-Mode ohne in Insert-Mode zu gehen
nnoremap K i<CR><Esc>
