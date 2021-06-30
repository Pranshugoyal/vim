
"Python specific settings
nnoremap \\ :w \| !python3 %

set expandtab

"Don't show pyc folder in netrw
let g:netrw_list_hide= '.*\.pyc$'

"Syntastic
"Set python syntax checker as python3 by default
let g:syntastic_python_python_exec = '/usr/local/bin/python3'
