# dotvim
My dotvim mostly for RoR and JS programing. This work is based on [astrails/dotvim](https://github.com/astrails/dotvim).

## Installation
Follow these instructions to install dotvim.

```Shell
cd ~
git clone https://github.com/aminfara/dotvim.git
ln -s dotvim .vim
ln -s .vim/vimrc .vimrc
cd ~/.vim
make install
```
## Customization
You can put your customized configuration in ~/.vimrc.before and ~/.vimrc.after. ~/.vimrc.before will run before plugins loaded so fill it with confiiguration you want to be set when plugins are loaded. Use ~/.vimrc.after for configurations you want to be set after plugin is loaded. Same applies to ~/.gvimrc.before and ~/.gvimrc.after when running in GUI mode.

## Requirements
* vim (complied with +ruby)
* make and gcc (build-essentials package in Ubuntu)
* ruby

## Plugins

## TODO


