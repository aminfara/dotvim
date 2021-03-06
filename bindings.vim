" <F2> for toggling paste mode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode


" save shortcut
inoremap <C-s> <C-o>:w<CR>
nnoremap <C-s> :w<CR>
" save all
inoremap <C-s><C-a> <C-o>:wall<CR>
nnoremap <C-s><C-a> :wall<CR>
inoremap <C-s>a <C-o>:wall<CR>
nnoremap <C-s>a :wall<CR>

""""""""""" awesome stuff from vimbits.com
" keep selection after in/outdent
vnoremap < <gv
vnoremap > >gv

" better navigation of wrapped lines
nnoremap j gj
nnoremap k gk

" easier increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" remove trailing spaces
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>

" easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" fast expand current file's directory in command mode
cnoremap %% <C-R>=expand('%:h').'/'<cr>

