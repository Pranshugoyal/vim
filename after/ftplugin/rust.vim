
let g:syntastic_rust_checkers = ['rustc']
let g:rustfmt_autosave = 1

nnoremap \\ :w \| :RustRun

packadd rust.vim
packadd syntastic

colorscheme sonokai
syntax on
