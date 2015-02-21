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
" NERDTree
"-------------------------------------------------------------------------------
let NERDTreeShowHidden=1

"-------------------------------------------------------------------------------
" tern_for_vim
"-------------------------------------------------------------------------------
let g:tern_map_keys=1

"-------------------------------------------------------------------------------
" Yankring
"-------------------------------------------------------------------------------
let g:yankring_replace_n_pkey = '<leader>['
let g:yankring_replace_n_nkey = '<leader>]'
nmap <leader>y :YRShow<cr>
let g:yankring_history_dir = '~/.vim/backup'

"-------------------------------------------------------------------------------
" Airline
"-------------------------------------------------------------------------------
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1

"-------------------------------------------------------------------------------
" Indent Guides
"-------------------------------------------------------------------------------
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 5

"-------------------------------------------------------------------------------
" vim-ruby
"-------------------------------------------------------------------------------
let ruby_spellcheck_strings = 1

"-------------------------------------------------------------------------------
" Omni completion
"-------------------------------------------------------------------------------
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Using tern for javascript
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript setlocal omnifunc=tern#Complete

" Ruby syntax
"-----------------------------------------------------------------------------
augroup Ruby
    autocmd!
    autocmd FileType ruby,eruby nested setlocal cinwords=do
    autocmd FileType ruby,eruby nested let g:rubycomplete_buffer_loading=1
    autocmd FileType ruby,eruby nested let g:rubycomplete_rails = 1
    autocmd FileType ruby,eruby nested let g:rubycomplete_classes_in_global=1

    " Other ruby
    autocmd BufNewFile,BufRead *.cap      nested setlocal filetype=ruby
    autocmd BufNewFile,BufRead *.html.erb nested setlocal filetype=eruby.html
    autocmd BufNewFile,BufRead *.js.erb   nested setlocal filetype=eruby.javascript
    autocmd BufNewFile,BufRead *.rb.erb   nested setlocal filetype=eruby.ruby
    autocmd BufNewFile,BufRead *.sh.erb   nested setlocal filetype=eruby.sh
    autocmd BufNewFile,BufRead *.yml.erb   nested setlocal filetype=eruby.yaml
    autocmd BufNewFile,BufRead *.txt.erb   nested setlocal filetype=eruby.text
augroup END

"-------------------------------------------------------------------------------
" NeoComplete
"-------------------------------------------------------------------------------
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#data_directory = '~/.vim/backup/neocomplcache'

let g:neocomplete#enable_smart_case = 1
let g:neocomplete#auto_completion_start_length = 2
let g:neocomplete#manual_completion_start_length = 0
let g:neocomplete#min_keyword_length = 3
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#enable_auto_close_preview = 1
let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 1

let g:neocomplete#keyword_patterns = {}
let g:neocomplete#keyword_patterns._ = '\h\w*'
let g:neocomplete#keyword_patterns.perl = '\h\w*->\h\w*\|\h\w*::\w*'

let g:neocomplete#sources#omni#input_patterns = {}
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
" For perlomni.vim setting " https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

let g:neocomplete#force_omni_input_patterns = {}
let g:neocomplete#force_omni_input_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::\w*'

let g:neocomplete#enable_omni_fallback = 0

let g:neocomplete#same_filetypes = {}
" In gitconfig buffers, completes from all buffers.
let g:neocomplete#same_filetypes.gitconfig = '_'
" In default, completes from all buffers.
let g:neocomplete#same_filetypes._ = '_'

" TODO bring them to bindings
function! s:my_cr_function()
  "return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction

inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" Close popup by <Space>.
inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"
" <TAB>: completion (use smart TAB instead)
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()

" For smart TAB completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ neocomplete#start_manual_complete()

function! s:check_back_space() "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

"-------------------------------------------------------------------------------
" NeoSnippet
"-------------------------------------------------------------------------------

" Tell NeoSnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> pumvisible() ? "\<C-n>"
      \ : neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \ : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

"-------------------------------------------------------------------------------
" Syntastic
"-------------------------------------------------------------------------------
let g:syntastic_error_symbol          = '✗✗'
let g:syntastic_warning_symbol        = '⚠⚠'
let g:syntastic_style_error_symbol    = '✗'
let g:syntastic_style_warning_symbol  = '⚠'
let g:syntastic_auto_loc_list         = 1 " Close the location-list when errors are gone
let g:syntastic_loc_list_height       = 5

" Ruby syntax checking and lint
let g:syntastic_ruby_checkers = ['mri']
if executable('rubocop')
    let g:syntastic_ruby_checkers = g:syntastic_ruby_checkers + ['rubocop']
    let g:syntastic_ruby_rubocop_args     = '--display-cop-names'
endif

if executable('ruby-lint')
    let g:syntastic_ruby_checkers = g:syntastic_ruby_checkers + ['rubylint']
endif

if executable('jshint')
    let g:syntastic_javascript_checkers = ['jshint']
endif
