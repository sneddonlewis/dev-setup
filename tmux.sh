#!/bin/bash
tmux_config="${XDG_CONFIG_HOME:-$HOME}/.tmux.conf"
tmux_start_script="${XDG_CONFIG_HOME:-$HOME}/.local/bin/tmux-session.sh"

# Check if the file already exists
if [ -f "$tmux_config" ]; then
    # If it exists, remove it with a friendly message
    echo "Removing existing tmux config file ..."
    rm "$tmux_config"
else
    # If it does not exist, display a different message
    echo "No existing tmux config file found."
fi

if [ -f "$tmux_start_script" ]; then
    # If it exists, remove it with a friendly message
    echo "Removing existing tmux start script ..."
    rm "$tmux_start_script"
else
    # If it does not exist, display a different message
    echo "No existing tmux start script found."
fi

# Copy the new tmux config file into place
# Make sure to use 'tmux_config' variable, not 'nvim_config'
cp ./tmux-config/tmux.conf "$tmux_config"
echo "New tmux config file has been added."

cp ./tmux-config/tmux-session.sh "$tmux_start_script"
echo "tmux start script 'tmux-session.sh' has been added"

echo "setting permissions on start script"
chmod +x "$tmux_start_script"

if [ $? -ne 0 ]; then
    echo "Error: Failed to make $script_to_modify executable. Did you run with subo?"
    exit 1
fi

echo "$script_to_modify is now executable."
