#!/bin/bash  

# Remove the .nanorc file from the home directory
if [ -f "$HOME/.nanorc" ]; then
    rm "$HOME/.nanorc"
    echo "Removed .nanorc from home directory." >> ~/linuxsetup.log
fi

# Remove the line that sources the bashrc custom from .bashrc using sed
sed -i '/source ~\/.dotfiles\/etc\/bashrc custom/d' "$HOME/.bashrc"
echo "Removed 'source ~/.dotfiles/etc/bashrc custom' from .bashrc." >> ~/linuxsetup.log

# Remove the .TRASH directory if it exists
if [ -d "$HOME/.TRASH" ]; then
    rm -rf "$HOME/.TRASH"
    echo "Removed .TRASH directory." >> ~/linuxsetup.log
fi

