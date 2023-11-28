#!/bin/bash

if ! command -v yay &>/dev/null; then
	git clone https://aur.archlinux.org/yay-bin
	cd yay-bin
	makepkg -si
	cd ../
	yay && rm -rf yay-bin
else
	echo "YAY already installed."
	yay
fi

programs=("github-cli" "papirus-icon-theme" "unzip" "zip" "firefox" "zsh" "alacritty" "htop" "neofetch" "ntfs-3g" "udisks2" "udiskie" "gvfs" "ttf-ms-fonts" "neovim" "nodejs" "npm" "lua" "ttf-joypixels" "ttf-jetbrains-mono-nerd" "python-pip" "mlocate" "zsh-syntax-highlighting" "noto-fonts-emoji" "bibata-cursor-theme" "mission-center")

for program in "${programs[@]}"; do
	if ! yay -Q "$program" >/dev/null 2>&1; then
		echo "Installing $program..."
		yay -S --noconfirm --needed "$program"
		echo "$program installed successfully!"
	else
		echo "$program is already installed."
	fi
done

#Extensions
git clone https://github.com/Tudmotu/gnome-shell-extension-clipboard-indicator.git ~/.local/share/gnome-shell/extensions/clipboard-indicator@tudmotu.com
cd ~/
git clone https://github.com/aunetx/blur-my-shell
cd blur-my-shell
make install
gnome-extensions install -f build/blur-my-shell@aunetx.shell-extension.zip
cd ~/

sudo chown $USER ~/ -R
chsh -s /usr/bin/zsh
