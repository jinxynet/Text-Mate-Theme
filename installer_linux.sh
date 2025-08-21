#! /usr/bin/env bash

GREEN="\e[32m"
INSTALL_PATH="/home/$USER/.config/sublime-text/Packages/User/"

echo -e "${GREEN}[+] Installing..."

if ! test -d $INSTALL_PATH; then 
    mkdir -p $INSTALL_PATH 
fi

cp Text-Mate.sublime-color-scheme $INSTALL_PATH

echo -e "${GREEN} [+] File installed at $INSTALL_PATH. Please restart sublime text if open"