set nocompatible
set showcmd
set number

set autoindent
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" Better indentation
filetype plugin indent on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*
let g:Tex_ViewRule_pdf = 'Preview'

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

" set backup
" set backupdir=~/.vim/backup
" set directory=~/.vim/tmp

if has("gui_macvim")
    colorscheme evening
    set bg=light
    let macvim_hig_shift_movement = 1
    set selection=exclusive
endif

imap jj <Esc>
inoremap ¿ß ¿
inoremap ¿ \

" NERDCommenter ----------------------------------------------------------{{{2

let NERDSpaceDelims = 1

" NERDTree ---------------------------------------------------------------{{{2

let NERDTreeIgnore = ['\.pyc$', '\.zwc.*$', '\.o$', '\.class$', '\~$']

set laststatus=2

if has("statusline")
    set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
au BufRead,BufNewFile *.scss set filetype=scss

