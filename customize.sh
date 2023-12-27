#!/bin/bash

# Appearance
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface gtk-theme 'Colloid-Dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Classic'
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'
gsettings set org.gnome.desktop.background picture-uri-dark 'file:///home/nnisarggada/Pictures/Wallpapers/purple-astronaut.png'
gsettings set org.gnome.shell favorite-apps "[]"

#Keybinds
gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'flat'

gsettings set org.gnome.desktop.input-sources xkb-options "['caps:backspace']"
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
for i in {1..9}; do
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-$i "['<Super>$i']"
done
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "['<Super>0']"
for i in {1..9}; do
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-$i "['<Super><Shift>$i']"
done
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "['<Super><Shift>0']"

gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/']"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/name "'Browser'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/command "'firefox'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/binding "'<Super>b'"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/name "'Files'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/command "'nautilus -w'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/binding "'<Super>e'"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/name "'Terminal'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/command "'alacritty'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/binding "'<Super>return'"

#Extensions
gnome-extensions enable blur-my-shell@aunetx
gnome-extensions enable clipboard-indicator@tudmotu.com
gnome-extensions enable color-picker@tuberry
gnome-extensions enable dash-to-panel@jderose9.github.com
