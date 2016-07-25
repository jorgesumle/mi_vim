"GENÉRICOS
set nocompatible
"Backups and swap files
set nobackup
set nowritebackup
set noswapfile

"TIPO DE ARCHIVO
filetype on
filetype plugin on
filetype indent on

"TABULACIÓN
set smarttab
set tabstop=4 "máximos espacios por tabulación
set shiftwidth=4 "espacios por autoindentación
"Al hacer un salto de línea, toma como referencia el nivel de indentación de la línea anterior
set autoindent
set expandtab "Espacios en vez de \t
"No pierde la selección en modo visual tras indentar
vnoremap < <gv
vnoremap > >gv

"RATÓN
set mouse=a "Permite usar el ratón

"BÚSQUEDA
set hlsearch
set incsearch
"Cancela la búsqueda, pulsando Escape
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

"APARIENCIA
set colorcolumn=79 "Colorea esa columna
set relativenumber
set number
"Colorea los espacios a final de línea
if &t_Co > 2 || has("gui_running")
    "Hay color. A por los espacios
    highlight ExtraWhitespace ctermbg=red guibg=red
    match ExtraWhitespace /\s\+$/
else
    "Los espacios a final de línea se ven así: ~
    set listchars=trail:~
    set list
endif

