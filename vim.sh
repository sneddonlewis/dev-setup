#!/bin/bash

nvim_config="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"

# set Neovim config path for Windows
if [ "$(expr substr $(uname -s) 1 5)" = "MINGW" ]; then
    nvim_config="$USERPROFILE/AppData/Local/nvim"
fi

rm -rf "$nvim_config"

mkdir -p "$nvim_config"

cp -R ./neovim-config/* "$nvim_config"

vim --headless "+Lazy! sync" +qa

