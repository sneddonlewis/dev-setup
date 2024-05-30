#!/bin/bash

nvim_config="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"

# set Neovim config path for Windows
if [ "$(expr substr $(uname -s) 1 5)" = "MINGW" ]; then
    nvim_config="$USERPROFILE/AppData/Local/nvim"
    # Todo want to use the current "neovim-config" on windows
    # but use git@github.com:sneddonlewis/nvim.git for Mac/Linux
    # that needs rust compiler installed as well as ripgrep and some other stuff
    # I put it in the readme in that github repo so check there
fi

rm -rf "$nvim_config"
mkdir -p "$nvim_config"
cp -R ./neovim-config/* "$nvim_config"
nvim --headless "+Lazy! sync" +qa

