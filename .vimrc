" settings
set autoindent
set ignorecase
set smartcase
set completeopt -=preview
set ruler
set number!
set relativenumber

" set <leader>
let mapleader=","
map <Space> <leader>

" enable mouse
set mouse=a

" visual reselect of just pasted
nnoremap gp `[v`]

" open vimrc in current tab / new tab
nnoremap <leader>v :e  ~/.vimrc<CR>
nnoremap <leader>V :tabnew  ~/.vimrc<CR>

" center cursor after moving up / down a half-page
:nnoremap <C-d> <C-d>zz
:nnoremap <C-u> <C-u>zz

" better scrolling
nnoremap <C-j> <C-d>zz
nnoremap <C-k> <C-u>zz

" center search results
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" references
" https://github.com/Netherdrake/Dotfiles
