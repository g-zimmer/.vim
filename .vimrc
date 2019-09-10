set number " zeilen nummern anzeigen
set relativenumber " relative Zeilen nummern anzeigen
set showmode " vim modus unten anzeigen
set ignorecase " case bei suche ignorieren
set smartcase " wenn Großbuchstabe enthalten dann case nicht ignorieren in suche
set incsearch " cursor beim tippen zu nächstem suchergebnis springen lassen
set shiftround " Shift to the next round tab stop. 
set hlsearch " Highlight search result
set shiftwidth=2 " Set auto indent spacing.

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'

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
" Map jk to ESC in insert mode
inoremap jk <esc>
" " Disable Esp key in insert mode
inoremap <esc> <nop>

" ---- NO DEAD KEYS IN INSERT MODE ----nmap à `a
nmap Á 'A
nmap À `A
nmap ç 'c
nmap Ç 'C
nmap é 'e
nmap è `e
nmap É 'E
nmap È `E
nmap í 'i
nmap ì `i
nmap Í 'I
nmap Ì `I
nmap ó 'o
nmap ò `o
nmap Ó 'O
nmap Ò `O
nmap ú 'u
nmap ù `u
nmap Ú 'U
nmap Ù `U
