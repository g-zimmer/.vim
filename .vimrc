" General settings
syntax on
set number " zeilen nummern anzeigen
set relativenumber " relative Zeilen nummern anzeigen
set showmode " vim modus unten anzeigen
set ignorecase " case bei suche ignorieren
set smartcase " wenn Großbuchstabe enthalten dann case nicht ignorieren in suche
set incsearch " cursor beim tippen zu nächstem suchergebnis springen lassen
set showmatch " show batching Brackets
set hlsearch " Highlight search result
set listchars=space:␣ " Spaces sichtbar machen
set list " List-Chars anzeigen
set encoding=utf-8 " Default Encoding
set path+=** " Dateien für File-Autocomplete rekursiv suchen (edit, find, ...)
set wildmenu " Wildcard-Optionen anzeigen und per Tab auswählen
set showtabline=1 " Tabline anzeigen
set hidden " Buffer verstecken anstatt zu schließen
" Tabstop-Config
set shiftround " Shift to the next round tab stop. 
set shiftwidth=4 " Set auto indent spacing.
set tabstop=4 " Anzahl Leerzeichen um einen Tabstop darzustellen
set expandtab " Expand tab to spaces

call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-surround' " Text-Objects für Klammern, Anführungszeichen etc.
    Plug 'vim-airline/vim-airline' " Schickere Statusbar
    Plug 'vim-airline/vim-airline-themes' " Themes für die Airline
    Plug 'terryma/vim-multiple-cursors' " Mehrere Cursor
    Plug 'tpope/vim-commentary' " Code-Kommentare togglen
    Plug 'tpope/vim-fugitive' " Git-Integration
    Plug 'airblade/vim-gitgutter' " Geänderte Zeilen im Gutter anzeigen
    Plug 'frazrepo/vim-rainbow' " Zusammen gehörende Klammern einfärben
    Plug 'scrooloose/nerdtree' " Tree-View für vim
    Plug 'Xuyuanp/nerdtree-git-plugin' " Git-Änderungen in Tree-View anzeigen
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzzy-Finder
    Plug 'tmhedberg/matchit' " Mehr Funktionalität für die %-Motion. (HTML-Tags, If-Then-Else etc.)
    Plug 'Raimondi/delimitMate' " Automatisches Einfügen schließender Klammern etc
    Plug 'wellle/targets.vim' " Mehr Text-Objects auf denen man arbeiten kann, z.B. nächste Klammern
    Plug 'sjl/badwolf' " Colorscheme fürs Syntax-Highlighting 
    Plug 'easymotion/vim-easymotion' " Gezielte Cursorbewegungen übere mehrere Zeilen hinweg
    Plug 'kshenoy/vim-signature' " Marks im Gutter anzeigen.
    Plug 'cj/vim-webdevicons' " Icons für Nerdtree etc.
    Plug 'yggdroot/indentline' " Hilfslinien für Einrückungen
    Plug 'godlygeek/tabular' " Text Alignment
    Plug 'plasticboy/vim-markdown' " Markdown-Plugin für vim
    Plug 'ycm-core/YouCompleteMe' " Code-Completion
    Plug 'sheerun/vim-polyglot' " Unterstützung für verschiedene Sprachen
    Plug 'dense-analysis/ale' " asynchrones Linting
    Plug 'machakann/vim-highlightedyank' " Yank-Text hervorheben
call plug#end()

" Colorscheme setzen:
colorscheme badwolf

" Blockcursor in CMDER:
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" Rainbow Brackets einschalten
let g:rainbow_active = 1

" Airline Settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#ale#enabled = 1

" ALE Settings
let g:ale_sign_error = '⚡'
let g:ale_sign_warning = '⚠️'

" ---- CUSTOM KEY MAPPINGS ----
" Tauschen von , und ;
nnoremap , ;
nnoremap ; ,

" NerdTree
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" FZF (Fuzzy Finder)
map <C-p> :FZF<CR>

" Suchergebnisse in Bildschirmmitte
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" Line-Break in Normal-Mode ohne in Insert-Mode zu gehen
nnoremap K i<CR><Esc>

" jk auf Esc mappen
imap jk <Esc>

" yank to EOL
nnoremap Y y$

" vereinfachtes Fenster-Management
nnoremap <C-Down> <C-W>+
nnoremap <C-Up> <C-W>-
nnoremap <C-Right> <C-W>>
nnoremap <C-Left> <C-W><

" Shortcuts für Methodenstart/-ende
nnoremap gM [m
nnoremap gm ]M

""" Shortcuts für copy/paste
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
