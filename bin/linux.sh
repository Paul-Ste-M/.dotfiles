#!/bin/bash  # Shebang to indicate that this script should be run with bash

# Check if the operating system is Linux
if [[ "$(uname)" != "Linux" ]]; then
    echo "Error: This script only works on Linux." >> ~/linuxsetup.log
    exit 1
fi

# Create the .TRASH directory if it doesn't exist
if [ ! -d "$HOME/.TRASH" ]; then
    mkdir "$HOME/.TRASH"
    echo "Created .TRASH directory." >> ~/linuxsetup.log
fi

# If .nanorc exists in home directory, rename it to .bup nanorc
if [ -f "$HOME/.nanorc" ]; then
    mv "$HOME/.nanorc" "$HOME/.bup_nanorc"
    echo "Renamed existing .nanorc to .bup_nanorc." >> ~/linuxsetup.log
fi

# Copy the content of etc/nanorc to ~/.nanorc
cp ./etc/nanorc "$HOME/.nanorc"
echo "Copied etc/nanorc to ~/.nanorc." >> ~/linuxsetup.log

# Append to the .bashrc file to source the new bashrc custom
echo "source ~/.dotfiles/etc/bashrc custom" >> "$HOME/.bashrc"
echo "Added 'source ~/.dotfiles/etc/bashrc custom' to .bashrc." >> ~/linuxsetup.log
