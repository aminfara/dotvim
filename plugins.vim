"-------------------------------------------------------------------------------
" NERDTree
"-------------------------------------------------------------------------------
let NERDTreeShowHidden=1

"-------------------------------------------------------------------------------
" Color scheme
"-------------------------------------------------------------------------------

" Color Scheme settings for 256 color
if &t_Co == '256'
  let g:solarized_termcolors= 256
  let g:gruvbox_termcolors= 256
  let g:gruvbox_italicize_comments= 0
endif

set background=dark
"colorscheme solarized
"colorscheme vividchalk
colorscheme gruvbox

" Color Scheme for 16 colors
if &t_Co == '16'
  colorscheme default
endif

"-------------------------------------------------------------------------------
" Airline
"-------------------------------------------------------------------------------
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
