#! /usr/bin/env bash

GREEN="\e[32m"
INSTALL_PATH="/home/$USER/.config/sublime-text/Packages/User/"
THEME_URL="https://raw.githubusercontent.com/vivekgohel2004/Text-Mate-Theme/main/Text-Mate.sublime-color-scheme"
THEME_FILE="Text-Mate.sublime-color-scheme"

echo -e "${GREEN}[+] Installing Text-Mate Theme..."

# Create install directory if it doesn't exist
mkdir -p "$INSTALL_PATH"

# Download theme file directly to Sublime User folder
curl -s -o "$INSTALL_PATH$THEME_FILE" "$THEME_URL"

echo -e "${GREEN}[+] File installed at $INSTALL_PATH"
echo -e "${GREEN}[+] Please restart Sublime Text if it is open."
