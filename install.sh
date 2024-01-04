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

programs=("nvidia" "nvidia-utils" "lib32-nvidia-utils""wl-clipboard" "xclip" "gnome-shell-extension-appindicator" "gnome-shell-extension-blur-my-shell" "gnome-shell-extension-clipboard-indicator" "gnome-shell-extension-color-picker" "gdm-settings" "github-cli" "papirus-icon-theme" "unzip" "zip" "firefox" "zsh" "alacritty" "htop" "neofetch" "ntfs-3g" "udisks2" "udiskie" "gvfs" "ttf-ms-fonts" "neovim" "nodejs" "npm" "lua" "ttf-joypixels" "ttf-jetbrains-mono-nerd" "python-pip" "mlocate" "zsh-syntax-highlighting" "noto-fonts-emoji" "bibata-cursor-theme" "colloid-gtk-theme-git")

for program in "${programs[@]}"; do
	if ! yay -Q "$program" >/dev/null 2>&1; then
		echo "Installing $program..."
		yay -S --noconfirm --needed "$program"
		echo "$program installed successfully!"
	else
		echo "$program is already installed."
	fi
done

sudo cp -r Pictures ~/
sudo cp -r .config ~/
sudo cp -r .local ~/
sudo cp .zshrc ~/

sudo chown $USER ~/ -R
chsh -s /usr/bin/zsh
