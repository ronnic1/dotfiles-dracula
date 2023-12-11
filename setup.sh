#!/bin/bash

# Cloning the required repositories
git clone https://github.com/ronnic1/dotfiles-dracula.git ~/.config/dotfiles-dracula
git clone https://github.com/tobi-wan-kenobi/bumblebee-status.git ~/.config/bumblebee-status

# Installing required packages
sudo pacman -S nitrogen python-psutil python-netifaces gnome-disk-utility alacritty

# Copying fonts
mkdir -p ~/.fonts
cp -r ~/.config/dotfiles-dracula/fonts/* ~/.fonts/

# Copying Bumblebee status theme
mkdir -p ~/.config/bumblebee-status/themes
cp ~/.config/dotfiles-dracula/Bumblebee\ status/ronnic.json ~/.config/bumblebee-status/themes/

# Copying i3 config
mkdir -p ~/.config/i3
cp ~/.config/dotfiles-dracula/i3/config ~/.config/i3/config

# Copying rofi config
mkdir -p ~/.config/rofi
cp ~/.config/dotfiles-dracula/rofi/config.rasi ~/.config/rofi

# Extracting and renaming Dracula GTK theme
sudo unzip ~/.config/dotfiles-dracula/usr/share/themes/dracula-gtk-master.zip -d /usr/share/themes/
sudo mv /usr/share/themes/dracula-gtk-master /usr/share/themes/dracula

# Copying wallpapers
cp -r ~/.config/dotfiles-dracula/wallpapers/ ~/Pictures/

# Copying Picom and Alacritty configuration
cp ~/.config/dotfiles-dracula/picom.conf ~/.config
cp ~/.config/dotfiles-dracula/alacritty.yml ~/.config

# Extracting and renaming Dracula icons
mkdir -p ~/.icons
unzip ~/.config/dotfiles-dracula/dracula-icons-main.zip -d ~/.icons/
mv ~/.icons/dracula-icons-main ~/.icons/dracula
