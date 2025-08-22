#! /usr/bin/env bash

# Colors
GREEN="\e[32m"
CYAN="\e[36m"
YELLOW="\e[33m"
MAGENTA="\e[35m"
RESET="\e[0m"

INSTALL_PATH="/home/$USER/.config/sublime-text/Packages/User/"
THEME_URL="https://raw.githubusercontent.com/vivekgohel2004/Text-Mate-Theme/main/Text-Mate.sublime-color-scheme"
THEME_FILE="Text-Mate.sublime-color-scheme"

# ASCII Art Banner
echo -e "${MAGENTA}"
echo "========================================"
echo "      ████████ Text-Mate Theme ████████      "
echo "========================================"
echo -e "${RESET}"

# Create User folder
echo -e "${CYAN}[~] Creating User folder if it doesn't exist...${RESET}"
mkdir -p "$INSTALL_PATH"
sleep 0.5

# Animated download dots
echo -ne "${YELLOW}[~] Downloading theme "
for i in {1..5}; do
    echo -n "."
    sleep 0.4
done
echo -e "${RESET}"

# Download theme directly to Sublime User folder
curl -s -o "$INSTALL_PATH$THEME_FILE" "$THEME_URL"

# Success message
echo -e "${GREEN}"
echo "========================================"
echo " ✅ Installation Complete! "
echo " 🎉 File installed at: $INSTALL_PATH"
echo " ✨ Open Sublime Text → Preferences → Color Scheme → User → Text-Mate"
echo "========================================"
echo -e "${RESET}"
