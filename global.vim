set nocompatible                       " be 'modern'

" TODO check if syntax enable is better option
syntax on                              " enable syntax highlighting
filetype plugin indent on              " enable plugins and indent based on file type

set noeol                              " no eol at the end of the file
set binary                             " required for noeol

" UTF-8/Unicode support
" requires Vim to be compiled with Multi-byte support, you can check that by
" running `vim --version` and checking for +multi_byte.
if has('multi_byte')
  scriptencoding utf-8
  set encoding=utf-8
end

" Setting Color to 16 for xterm
if &term == "xterm"
  set t_Co=16
  colorscheme default
endif

" Setting color to 256 for more sophisticated terminals
if &term == 'xterm-256color' || $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

" presentation settings
set number                             " showing line numbers
set numberwidth=3                      " number of columns for line numbers
set textwidth=0                        " Do not wrap words (insert)
set nowrap                             " Do not wrap words (view)
set showcmd                            " Show (partial) command in status line.
set showmatch                          " Show matching brackets.
set ruler                              " line and column number of the cursor position
set wildmenu                           " enhanced command completion
set visualbell                         " use visual bell instead of beeping
set laststatus=2                       " always show the status line
"set listchars=tab:▸\ ,trail:·,eol:¬
set listchars=tab:▸\ ,trail:·          " hidden characters shown as
set list                               " show hidden characters

set spell                              " highlight spell errors
set spelllang=en_us
set spellfile=~/.vim/spell/en.utf-8.add


" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" behavioral settings
                                       " ignore these files when completing names and in explorer
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
set shell=/bin/bash                    " use bash for shell commands
set autowriteall                       " Automatically save before commands like :next and :make
set hidden                             " enable multiple modified buffers
set history=1000
set autoread                           " automatically read file that has been changed on disk and doesn't have changes in vim
set backspace=indent,eol,start
" TODO should go to gvimrc
set guioptions-=T                      " disable toolbar"
set completeopt=menuone,preview        " show popup menu for completion
let bash_is_sh=1                       " syntax shell files as bash scripts
" TODO remove as we use filetype indentation
" set cinoptions=:0,(s,u0,U1,g0,t0       " some indentation options ':h cinoptions' for details
set modelines=5                        " number of lines to check for Vim: directives at the start/end of file
"set fixdel                            " fix terminal code for delete (if delete is broken but backspace works)
set autoindent                         " automatically indent new line

set tabstop=4                          " number of spaces in a tab
set shiftwidth=0                       " number of spaces for indent (0 causes to use tabstop value)
set expandtab                          " expand tabs into spaces

set ttimeoutlen=50                     " fast Esc to normal mode

" mouse settings
if has("mouse")
"  set mouse=a                         " uncomment if you like to have your mouse
endif
set mousehide                          " Hide mouse pointer on insert mode

" search settings
set incsearch                          " Incremental search
set hlsearch                           " Highlight search match
set ignorecase                         " Do case insensitive matching
set smartcase                          " do not ignore if search pattern has CAPS

" turn on omni completion
set omnifunc=syntaxcomplete#Complete
" TODO better go to plugins.vim
let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_classes_in_global = 1

" directory settings
call system('mkdir -vp ~/.vim/backup/undo/ > /dev/null 2>&1')
set backupdir=~/.vim/backup//          " list of directories for the backup file
set directory=~/.vim/backup//          " list of directory names for the swap file
set undodir=~/.vim/backup/undo//
set nobackup                           " do not write backup files
set swapfile                           " we like .swp files as terminal may die over ssh
set undofile
" TODO remove the following line if it is not needed
set backupskip+=~/tmp/*,/private/tmp/* " skip backups on OSX temp dir, for crontab -e to properly work

" folding
set foldcolumn=0                       " columns for folding
set foldmethod=syntax
set foldlevel=9
set nofoldenable                       " dont fold by default

" TODO remove if irrelevant
" extended '%' mapping for if/then/else/end etc
"runtime macros/matchit.vim

let mapleader = ","
let maplocalleader = "\\"

if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

" TODO better go to filetype specific configs
" well TAB is important in Makefile
autocmd FileType make setlocal noexpandtab
