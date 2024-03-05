#!/bin/bash
#|---/ /+--------------------+---/ /|#
#|--/ /-|   Script to copy   |--/ /-|#
#|-/ /--|  configs from home |-/ /--|#
#|/ /---+--------------------+/ /---|#

repo_home=$HOME/hyprland-dotfiles
repo_configs=$repo_home/Configs
user_configs=$HOME/.config

echo "Copying settings:"

# VS Code
echo "vscode..."
cp $user_configs/Code/User/keybindings.json $repo_configs/.config/Code/User/
cp $user_configs/Code/User/settings.json $repo_configs/.config/Code/User/

# Dunst
echo "dunst..."
cp -r $user_configs/dunst/ $repo_configs/.config/

# Fish
echo "fish..."
cp $user_configs/fish/config.fish $repo_configs/.config/fish/

# GTK-3
echo "gtk-3..."
cp $user_configs/gtk-3.0/bookmarks $repo_configs/.config/gtk-3.0/
cp $user_configs/gtk-3.0/settings.ini $repo_configs/.config/gtk-3.0/

# Hyprland
echo "hyprland..."
cp -r $user_configs/hypr/ $repo_configs/.config/

# Kitty
echo "kitty..."
cp -r $user_configs/kitty/themes/ $repo_configs/.config/kitty/
cp $user_configs/kitty/kitty.conf $repo_configs/.config/kitty/

# Kvantum
echo "kvantum..."
cp -r $user_configs/Kvantum/ $repo_configs/.config/

# LSD
echo "lsd..."
cp -r $user_configs/lsd/ $repo_configs/.config/

# neofetch
echo "neofetch..."
cp -r $user_configs/neofetch/ $repo_configs/.config/

# nwg-look
echo "nwg-look..."
cp $user_configs/nwg-look/config $repo_configs/.config/nwg-look/

# Octopi
echo "octopi..."
cp $user_configs/octopi/octopi.conf $repo_configs/.config/octopi/

# qt5ct
echo "qt5ct..."
cp -r $user_configs/qt5ct/ $repo_configs/.config/

# qt6ct
echo "qt6ct..."
cp -r $user_configs/qt6ct/ $repo_configs/.config/

# Rofi
echo "rofi..."
cp -r $user_configs/rofi/ $repo_configs/.config/

# Swaylock
echo "swaylock..."
cp $user_configs/swaylock/config $repo_configs/.config/swaylock/

# swww
echo "swww..."
cp -r $user_configs/swww/ $repo_configs/.config/

# waybar
echo "waybar..."
cp -r $user_configs/waybar/ $repo_configs/.config/

# wlogout
echo "wlogout..."
cp -r $user_configs/wlogout/ $repo_configs/.config/

# xdg-desktop-portal
echo "xdg-desktop-portal..."
cp $user_configs/xdg-desktop-portal/portals.conf $repo_configs/.config/xdg-desktop-portal/

# xsettingsd
echo "xsettingsd..."
cp $user_configs/xsettingsd/xsettingsd.conf $repo_configs/.config/xsettingsd

# Dolphin
echo "copying dolphinrc..."
cp $user_configs/dolphinrc $repo_configs/.config/

# kdeglobals
echo "copying kdeglobals..."
cp $user_configs/kdeglobals $repo_configs/.config/

# Starship
echo "starship..."
cp $user_configs/starship.toml $repo_configs/.config/

# ----------------------------------------------------------------
# ICONS
# ----------------------------------------------------------------

echo "============================================================"

user_icons=$HOME/.icons

# default
echo "Copying default icon settings..."
cp $user_icons/default/index.theme $repo_configs/.icons/default/

# ----------------------------------------------------------------
# LOCAL
# ----------------------------------------------------------------

echo "============================================================"
echo "Copying local settings..."

user_shared_locals=$HOME/.local/share

# Dolphin
echo "dolphin..."
cp -r $user_shared_locals/dolphin/ $repo_configs/.local/share/
cp -r $user_shared_locals/kxmlgui5/ $repo_configs/.local/share/

# Fonts
echo "fonts..."
cp -r /usr/share/fonts/noto/ $repo_configs/.local/share/fonts/
cp -r /usr/share/fonts/noto-nerd-font/ $repo_configs/.local/share/fonts/

echo "Done!"