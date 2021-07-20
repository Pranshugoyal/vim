
source pluginInit.vim

call NetrwConfig()
set number relativenumber signcolumn=number
set ruler showcmd
set wildmenu completeopt+=noselect
set noequalalways scrolloff=2
set ignorecase
set secure exrc 

set mouse=i
set clipboard=unnamed
filetype plugin on
nnoremap Y y$

"Allows arrow keys to change line
set whichwrap+=<,>,h,l

"Indent settings
set smartindent tabstop=4 shiftwidth=4

if &diff
	call SonokaiLoad()
else
	colorscheme noclown
endif

com! EditFTPlugin exe 'e ~/.vim/after/ftplugin/' . &filetype . '.vim'
com! Sonokai exe 'call SonokaiLoad()'
com! Drawer exe '35vs . | wincmd l'

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

