#!/bin/bash
SCRIPT_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# install init.vim
mkdir -p ~/.config/nvim/
ln -f -s $SCRIPT_PATH/.nvimrc ~/.config/nvim/init.vim

# install plugins
export PATH=$PATH:/snap/bin
nvim -c "PlugInstall --sync" -c "PlugUpdate --sync" -c "qall"
nvim -c ":call coc#util#install()" -c qall

# set up coc
ln -s $SCRIPT_PATH/coc-settings.json ~/.config/nvim/coc-settings.json
