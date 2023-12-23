#!/bin/bash
tmux_config="${XDG_CONFIG_HOME:-$HOME}/.tmux.conf"

# Check if the file already exists
if [ -f "$tmux_config" ]; then
    # If it exists, remove it with a friendly message
    echo "Removing existing tmux config file..."
    rm "$tmux_config"
else
    # If it does not exist, display a different message
    echo "No existing tmux config file found."
fi

# Copy the new tmux config file into place
# Make sure to use 'tmux_config' variable, not 'nvim_config'
cp ./tmux-config/tmux.conf "$tmux_config"

echo "New tmux config file has been copied successfully."
