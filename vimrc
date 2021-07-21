
source ~/.vim/pluginInit.vim

"UI Settings
call NetrwConfig()
colorscheme noclown
set number relativenumber
set ruler showcmd
set wildmenu
set noequalalways scrolloff=2 signcolumn=number
set secure exrc 

filetype plugin on

"Editing settings
set mouse=i
nnoremap Y y$
set ignorecase
set clipboard=unnamed
set whichwrap+=<,>,h,l
set  completeopt+=noselect
set smartindent tabstop=4 shiftwidth=4

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

