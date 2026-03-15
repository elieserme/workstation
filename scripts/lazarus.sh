#!/bin/bash

# Define download directory
DOWNLOAD_DIR="$HOME/lazinstall"
mkdir -p "$DOWNLOAD_DIR"
cd "$DOWNLOAD_DIR" || exit

# IMPORTANT: Update these URLs with the current version links from https://lazarus-ide.org
# Example versions: Lazarus 4.0, FPC 3.2.2 (adjust as needed for your architecture, e.g., amd64, arm64)

FPC_DEB_URL="https://download.lazarus-ide.org/Lazarus%20Linux%20amd64%20DEB/Lazarus%204.6/fpc-laz_3.2.2-210709_amd64.deb"
FPC_SRC_DEB_URL="https://download.lazarus-ide.org/Lazarus%20Linux%20amd64%20DEB/Lazarus%204.6/fpc-src_3.2.2-210709_amd64.deb"
LAZ_DEB_URL="https://download.lazarus-ide.org/Lazarus%20Linux%20amd64%20DEB/Lazarus%204.6/lazarus-project_4.6.0-0_amd64.deb"

# Download the packages
wget -c "$FPC_DEB_URL"
wget -c "$FPC_SRC_DEB_URL"
wget -c "$LAZ_DEB_URL"

# Install the packages in the correct order
sudo apt-get update
sudo dpkg -i "fpc-laz_3.2.2-210709_amd64.deb"
sudo dpkg -i "fpc-src_3.2.2-210709_amd64.deb"
sudo apt --fix-broken install
sudo apt install libgtk2.0-dev -y
sudo dpkg -i "lazarus-project_4.6.0-0_amd64.deb"

# This command can help fix any broken dependencies that might occur during the dpkg process
sudo apt install -f

echo "Lazarus installation complete. You can now run 'startlazarus' to start it."
