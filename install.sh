#! /bin/bash

echo "This will erase your ~/.config/nvim directory!"
read -p "Are you sure? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # Install dependencies
    packagesNeeded='yarn neovim'
    if [ -x "$(command -v apk)" ];       then sudo apk add --no-cache $packagesNeeded
    elif [ -x "$(command -v apt-get)" ]; then sudo apt-get install $packagesNeeded
    elif [ -x "$(command -v dnf)" ];     then sudo dnf install $packagesNeeded
    elif [ -x "$(command -v zypper)" ];  then sudo zypper install $packagesNeeded
    elif [ -x "$(command -v pacman)" ];  then sudo pacman -S $packagesNeeded
    else echo "FAILED TO INSTALL PACKAGE: Package manager not found. You must manually install: $packagesNeeded">&2; fi

    # Setup files
    rm -rf ~/.config/nvim
    mkdir -p ~/.config/nvim
    cp -r after ~/.config/nvim/after 
    cp init.lua ~/.config/nvim/init.lua
    cp coc-settings.json ~/.config/nvim/coc-settings.json
    cp -r lua ~/.config/nvim/lua


    # Install Plug
    curl -sL install-node.vercel.app/lts | bash

    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
           https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    nvim -c 'PlugInstall'

    # Setup coc
    cd ~/.config/nvim/plugged/coc.nvim
    yarn install
fi

