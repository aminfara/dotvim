" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" file tree
NeoBundle 'scrooloose/nerdtree'

" file tree and tabs interaction
NeoBundle 'jistr/vim-nerdtree-tabs'

" fuzzy file open
NeoBundle 'kien/ctrlp.vim'

" git integration
NeoBundle 'tpope/vim-fugitive'

" commenting
NeoBundle 'scrooloose/nerdcommenter'

" yank history
NeoBundle 'YankRing.vim'

" Code completion
NeoBundle 'Shougo/neocomplete.vim'

" syntax checking on save
NeoBundle 'scrooloose/syntastic'

" better looking statusline
NeoBundle 'bling/vim-airline'

" plugin for visually displaying indent levels
NeoBundle 'Indent-Guides'

" end certain structures automatically, e.g. begin/end etc.
NeoBundle 'tpope/vim-endwise'

" manipulation of surraunding parens, quotes, etc.
NeoBundle 'tpope/vim-surround'

" automatic closing of quotes, parenthesis, brackets, etc.
NeoBundle 'Raimondi/delimitMate'

" Support for user-defined text objects
NeoBundle 'kana/vim-textobj-user'

""""""""""""""""""""""""""""""""
" Syntax and language specific "
""""""""""""""""""""""""""""""""
" Ruby
NeoBundle 'vim-ruby/vim-ruby'
" rails support
NeoBundle 'tpope/vim-rails'
" bundler integration (e.g. :Bopen)
NeoBundle 'tpope/vim-bundler'
" rake integration
NeoBundle 'tpope/vim-rake'
" A custom text object for selecting ruby blocks (ar/ir)
NeoBundle 'nelstrom/vim-textobj-rubyblock'
" ruby refactoring
NeoBundle 'ecomba/vim-ruby-refactoring'
" apidock.com docs integration
NeoBundle 'apidock.vim'
" toggle ruby blocks style
NeoBundle 'vim-scripts/blockle.vim'
" lightweight Rspec runner for Vim
NeoBundle 'josemarluedke/vim-rspec'

" JavaScript
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'othree/javascript-libraries-syntax.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'marijnh/tern_for_vim', { 'build': { 'others': 'npm install' } }

NeoBundle 'JSON.vim'
NeoBundle 'tpope/vim-cucumber'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'kchmck/vim-coffee-script'

" Color Schemes
NeoBundle 'morhetz/gruvbox'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tpope/vim-vividchalk'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
