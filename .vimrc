set ignorecase
set smartcase

let mapleader = " "

" Search Files (The 'Go to File' specific action)
nnoremap <leader>ff :action GotoFile<CR>

" Grep global
nnoremap <leader>/ :action FindInPath<CR>

" Toggle between the current and last opened file
" This mimics the standard Vim 'Ctrl-^' behavior
nnoremap <leader><leader> <C-^>

" Project tool window (File explorer)
nnoremap <leader>ee :action ActivateProjectToolWindow<CR>

" Go to implementation
nnoremap gi :action GotoImplementation<CR>

nnoremap <leader>rn :action RenameElement<CR>

nnoremap <leader>fm :action ReformatCode<CR>

nnoremap <leader>oi :action OptimizeImports<CR>
