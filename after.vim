" This file is loaded from after/plugin/after.vim
" which means it loads AFTER the rest of the plugins

source ~/.vim/bindings.vim
source ~/.vim/plugins-override.vim

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif

if has('gui_running')
  if filereadable(expand("~/.gvimrc.after"))
    source ~/.gvimrc.after
  endif
endif
