#! /usr/bin/env bash

GREEN="\e[32m"
INSTALL_PATH="/home/$USER/.config/sublime-text/Packages/User/"
THEME_URL="https://raw.githubusercontent.com/vivekgohel2004/Text-Mate-Theme/main/Text-Mate.sublime-color-scheme"
THEME_FILE="Text-Mate.sublime-color-scheme"

echo -e "${GREEN}[+] Installing Text-Mate Theme..."

# Create install directory if it doesn't exist
if ! test -d "$INSTALL_PATH"; then 
    mkdir -p "$INSTALL_PATH"
fi

# Download theme file if not present
if ! test -f "$THEME_FILE"; then
    echo -e "${GREEN}[+] Downloading $THEME_FILE..."
    curl -s -O "$THEME_URL"
fi

# Copy theme file to Sublime User folder
cp "$THEME_FILE" "$INSTALL_PATH"

echo -e "${GREEN}[+] File installed at $INSTALL_PATH"
echo -e "${GREEN}[+] Please restart Sublime Text if it is open."

