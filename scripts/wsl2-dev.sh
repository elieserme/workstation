#!/bin/bash

# sudo without password
sudo usermod -aG sudo "$USER"
sudo tee -a /etc/sudoers > /dev/null << EOL
$USER ALL=(ALL) NOPASSWD:ALL
EOL

# git configuration
# shellcheck disable=SC2002
(type -p wget >/dev/null || (sudo apt update && sudo apt install wget -y)) \
	&& sudo mkdir -p -m 755 /etc/apt/keyrings \
	&& out=$(mktemp) && wget -nv -O"$out" https://cli.github.com/packages/githubcli-archive-keyring.gpg \
	&& cat "$out" | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
	&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
	&& sudo mkdir -p -m 755 /etc/apt/sources.list.d \
	&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
	&& sudo apt update \
	&& sudo apt install gh -y
git config --global user.name "Elieser"
git config --global user.email "eliesermorais@gmail.com"
git config --global init.defaultBranch main
git config --global pull.rebase false
git config --global color.ui always
[ -f "/mnt/c/Program\ Files/Git/mingw64/bin/git-credential-manager.exe" ] && git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/bin/git-credential-manager.exe"

# update and install packages
sudo apt install build-essential -y
sudo apt install gettext -y
sudo apt install dos2unix -y
sudo apt install btop -y

# python pillow dependencies
sudo apt install libjpeg-dev zlib1g-dev -y

# python config
cat >> ~/.bashrc << EZS3
export PYTHONDONTWRITEBYTECODE=1
export PYTHONUTF8=1
EZS3

# python uv installation
curl -LsSf https://astral.sh/uv/install.sh | sh

# mise and starship installation
curl https://mise.run | sh
echo "eval \"\$(/home/$USER/.local/bin/mise activate bash)\"" >> ~/.bashrc
curl -sS https://starship.rs/install.sh | sh
echo "eval \"\$(starship init bash)\"" >> ~/.bashrc

# ble.sh installation
git clone --recursive --depth 1 --shallow-submodules https://github.com/akinomyoga/ble.sh.git
make -C ble.sh install PREFIX=~/.local
echo 'source -- ~/.local/share/blesh/ble.sh' >> ~/.bashrc
rm -rf ble.sh

# android studio & sdk on windows
[ -d "/mnt/c/Users/elies/AppData/Local/Android/Sdk" ] && echo -e "\n# Android\nexport ANDROID_HOME=/mnt/c/Users/elies/AppData/Local/Android/Sdk\nexport WSLENV=ANDROID_HOME/p" >> "$HOME"/.bashrc
[ -f "/mnt/c/Users/elies/AppData/Local/Android/sdk/platform-tools/adb.exe" ] && sudo cp /mnt/c/Users/elies/AppData/Local/Android/sdk/platform-tools/adb.exe /mnt/c/Users/elies/AppData/Local/Android/sdk/platform-tools/adb

# youtube-dl installation
sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

# youtube download script
sudo tee /usr/local/bin/youtube-download > /dev/null << YZS1
#!/bin/bash
yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 \$1
YZS1
sudo chmod +x /usr/local/bin/youtube-download
sudo tee /usr/local/bin/youtube-music-download > /dev/null << YZS1
#!/bin/bash
yt-dlp -x --audio-format mp3 \$1
YZS1
sudo chmod +x /usr/local/bin/youtube-music-download

# site download script
sudo tee /usr/local/bin/site-download > /dev/null << YZS1
#!/bin/bash
wget --mirror --convert-links --adjust-extension --page-requisites --no-parent -r -erobots=off \$1
YZS1
sudo chmod +x /usr/local/bin/site-download

# utf-8
sudo apt install locales -y
sudo locale-gen en_US.UTF-8
sudo dpkg-reconfigure locales
