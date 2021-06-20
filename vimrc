"netrw settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_winsize = 13
"Open files in last window by default
"let g:netrw_browse_split = 4

set number
set relativenumber
set ruler
colorscheme noclown
set wildmenu
set noequalalways
set completeopt+=noselect
set ignorecase

"Show commands as they are types
set showcmd

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

"Enable mouse in insert mode
set mouse=i
set clipboard=unnamed
nnoremap Y y$


"Enable project specific vimrc,
set exrc
set secure

"Keeps cursor 4 lines from edge
set scrolloff=2

"Allows arrow keys to change line
set whichwrap+=<,>,h,l

"Indent settings
set tabstop=4
set shiftwidth=4
set smartindent

filetype plugin on
"Add command to quickly edit settings for current file type
com! EditFTPlugin exe 'e ~/.vim/after/ftplugin/' . &filetype . '.vim'
packadd sonokai

"Package manager
function PackageManagerInit()
	packadd minpac
	call minpac#init()
	call minpac#add('k-takata/minpac', {'type':'opt'})

	"Colorschemes
	call minpac#add('sainnhe/sonokai', {'type': 'opt'})

	"Features
	call minpac#add('vim-syntastic/syntastic', {'type': 'opt'})
	call minpac#add('yegappan/taglist', {'type': 'opt'})

	"Language support
	call minpac#add('rust-lang/rust.vim', {'type': 'opt'})
	call minpac#add('faith/vim-go', {'type': 'opt'})
endfunction
