" -- plugins -------------------------------------

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '$HOME/.fzf' }
Plug 'junegunn/fzf.vim', { 'dir': '$HOME/.fzf.vim' }

call plug#end()

" -- settings ------------------------------------
set autoindent
set ignorecase
" set smartcase
set completeopt -=preview
set ruler
set number!
set relativenumber
set tabstop=2 " Indent by 2 spaces

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
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" better scrolling
nnoremap <C-j> <C-d>zz
nnoremap <C-k> <C-u>zz

" -- fzf stuff -----------------------------------

" Integrate fzf via install on servers
set rtp+=~/.fzf

" Shortcuts for using fzf in vim
nnoremap <leader>l :Lines<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>g :GFiles<cr>
nnoremap <leader>t :Tags<cr>
" Focus on a particular window
noremap <leader>w :Windows<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>h :History<cr>
nnoremap <leader>r :Rg<cr>
" RG for word under cursor
nnoremap <silent> <Leader>ur :Rg <C-R><C-W><CR>
" Shortcuts for opening up results in splits
let g:fzf_action = {
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

" -- custom vimscripts ---------------------------

" Toggle comments with CTRL+/
" works except for
" if the text contains call in it since its a special word for vim
" or if file has no extension (should add #)
source $HOME/.vim/scripts/togglecomments.vim

" references
" https://github.com/Netherdrake/Dotfiles
" https://github.com/junegunn/vim-plug

" articles
" https://stackoverflow.com/a/24652257/2571881
" https://gist.github.com/voyeg3r/1c589b685e9568125038d4d4035af656
