
source pluginInit.vim

"netrw settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_winsize = 13

set number relativenumber signcolumn=number
set ruler showcmd
set wildmenu completeopt+=noselect
set noequalalways scrolloff=2
set ignorecase
set secure exrc 

"Enable mouse in insert mode
set mouse=i
set clipboard=unnamed
nnoremap Y y$

"Allows arrow keys to change line
set whichwrap+=<,>,h,l

"Indent settings
set tabstop=4
set shiftwidth=4
set smartindent

com! Sonokai exe 'call SonokaiLoad()'
com! Drawer exe '35vs . | wincmd l'

if &diff
	call SonokaiLoad()
else
	colorscheme noclown
endif

augroup CursorLineOnlyInActiveWindow
	autocmd!
	autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
	autocmd WinLeave * setlocal nocursorline
augroup END 

augroup RelativeNumberingOnlyInActiveWindow
	autocmd!
	autocmd VimEnter,WinEnter,BufWinEnter * setlocal relativenumber
	autocmd WinLeave * setlocal norelativenumber
augroup END 

filetype plugin on
"Add command to quickly edit settings for current file type
com! EditFTPlugin exe 'e ~/.vim/after/ftplugin/' . &filetype . '.vim'

