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

" " file tree and tabs interaction
NeoBundle 'jistr/vim-nerdtree-tabs'

" commenting
NeoBundle 'scrooloose/nerdcommenter'

" yank history
NeoBundle 'YankRing.vim'

" syntax checking on save
NeoBundle 'scrooloose/syntastic'

" better looking statusline
NeoBundle 'bling/vim-airline'

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
