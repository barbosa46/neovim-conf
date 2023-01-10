#! /bin/bash

echo "This will erase your ~/.config/nvim directory!"
read -p "Are you sure? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # Setup files
    rm -rf ~/.config/nvim
    mkdir -p ~/.config/nvim
    ln -s "$(pwd)"/after ~/.config/nvim/after
    ln -s "$(pwd)"/init.lua ~/.config/nvim/init.lua
    ln -s "$(pwd)"/lua ~/.config/nvim/lua

    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
           https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    :
    nvim -c 'PlugInstall'

fi

