#!/bin/bash

# Appearance
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Classic'
gsettings set org.gnome.desktop.interface icon-theme 'ePapirus-Dark'
gsettings set org.gnome.desktop.background picture-uri-dark 'file:///usr/share/backgrounds/gnome/blobs-d.svg'
gsettings set org.gnome.shell favorite-apps "[]"

#Keybinds
gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Super>m']"
gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Super>f']"
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
gsettings set org.gnome.shell.keybindings toggle-overview "['<Alt>space']"
gsettings set org.gnome.shell.keybindings show-screenshot-ui "['<Super>s']"
gsettings set org.gnome.shell.keybindings toggle-quick-settings "['<Super>a']"
gsettings set org.gnome.shell.keybindings toggle-message-tray "['<Super>n']"

for i in {1..9}; do
	gsettings set org.gnome.shell.keybindings switch-to-application-$i "[]"
done
for i in {1..4}; do
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-$i "['<Super>$i']"
done
for i in {1..4}; do
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-$i "['<Super><Shift>$i']"
done

gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/']"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/name "'Browser'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/command "'firefox'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/binding "'<Super>b'"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/name "'Files'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/command "'nautilus'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/binding "'<Super>e'"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/name "'Terminal'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/command "'alacritty'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/binding "'<Super>return'"

#Extensions
gnome-extensions enable blur-my-shell@aunetx
gnome-extensions enable clipboard-indicator@tudmotu.com
