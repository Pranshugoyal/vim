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
set wildmenu
set noequalalways
set completeopt+=noselect
set ignorecase
set showcmd

"Enable mouse in insert mode
set mouse=i
set clipboard=unnamed
nnoremap Y y$

"Enable project specific vimrc,
set secure exrc 

"Keeps cursor 2 lines from edge
set scrolloff=2

"Allows arrow keys to change line
set whichwrap+=<,>,h,l

"Indent settings
set tabstop=4
set shiftwidth=4
set smartindent

function SonokaiLoad()
    syntax on
    packadd sonokai
    let g:sonokai_show_eob=0
	let g:sonokai_disable_italic_comment = 1
    let g:sonokai_better_performance = 1
    "let g:sonokai_style='atlantis'
    colorscheme sonokai
endfunction
com! Sonokai exe 'call SonokaiLoad()'

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

"Package manager
function PackageManagerInit()
	packadd minpac
	call minpac#init()
	call minpac#add('k-takata/minpac', {'type':'opt'})

	"Colorschemes
	call minpac#add('sainnhe/sonokai', {'type': 'opt'})
	call minpac#add('arzg/vim-colors-xcode', {'type': 'opt'})

	"Features
	call minpac#add('vim-syntastic/syntastic', {'type': 'opt'})
	call minpac#add('yegappan/taglist', {'type': 'opt'})

	"Language support
	call minpac#add('rust-lang/rust.vim', {'type': 'opt'})
	call minpac#add('fatih/vim-go', {'type': 'opt'})

	"Git support
	call minpac#add('airblade/vim-gitgutter', {'type': 'opt'})
	call minpac#add('tpope/vim-fugitive', {'type': 'opt'})

    call minpac#update()
endfunction
