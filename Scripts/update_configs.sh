#!/bin/bash
#|---/ /+--------------------+---/ /|#
#|--/ /-|   Script to copy   |--/ /-|#
#|-/ /--|  configs from home |-/ /--|#
#|/ /---+--------------------+/ /---|#

repo_home=$HOME/hyprland-dotfiles
repo_configs=$repo_home/Configs
user_configs=$HOME/.config

# VS Code
echo "Copying VS Code keybindings..."
cp $user_configs/Code/User/keybindings.json $repo_configs/.config/Code/User/
echo "Copying VS Code settings..."
cp $user_configs/Code/User/settings.json $repo_configs/.config/Code/User/

# Dunst
echo "Copying Dunst settings..."
cp -r $user_configs/dunst/ $repo_configs/.config/

# Fish
echo "Copying Fish settings..."
cp $user_configs/fish/config.fish $repo_configs/.config/fish/

# GTK-3
echo "Copying GTK-3 bookmarks..."
cp $user_configs/gtk-3.0/bookmarks $repo_configs/.config/gtk-3/
echo "Copying GTK-3 settings..."
cp $user_configs/gtk-3.0/settings.init $repo_configs/.config/gtk-3/

# Hyprland
echo "Copying Hyprland configs..."
cp -r $user_configs/hypr/ $repo_configs/.config/

# Kitty
echo "Copying Kitty themes..."
cp $user_configs/kitty/themes/ $repo_configs/.config/kitty/
echo "Copying Kitty config..."
cp $user_configs/kitty/kitty.conf $repo_configs/.config/kitty/

# Kvantum
echo "Copying Kvantum configs..."
cp -r $user_configs/Kvantum/ $repo_configs/.config/

# LSD
echo "Copying LSD settings..."
cp $user_configs/lsd/ $repo_configs/.config/

# neofetch
echo "Copying neofetch settings..."
cp -r $user_configs/neofetch/ $repo_configs/.config/

# nwg-look
echo "Copying nwg-look settings..."
cp $user_configs/nwg-look/config $repo_configs/.config/nwg-look/

# Octopi
echo "Copying Octopi settings..."
cp $user_configs/octopi/octopi.conf $repo_configs/.config/octopi/

# qt5ct
echo "Copying qt5ct settings..."
cp $user_configs/qt5ct/ $repo_configs/.config/

# qt6ct
echo "Copying qt6ct settings..."
cp $user_configs/qt6ct/ $repo_configs/.config/

# Rofi
echo "Copying Rofi settings..."
cp $user_configs/rofi/ $repo_configs/.config/

# Swaylock
echo "Copying Swaylock settings..."
cp $user_configs/swaylock/config $repo_configs/.config/swaylock/

# swww
echo "Copying swww settings..."
cp $user_configs/swww/ $repo_configs/.config/

# waybar
echo "Copying waybar settings..."
cp $user_configs/waybar/ $repo_configs/.config/

# wlogout
echo "Copying wlogout settings..."
cp $user_configs/wlogout/ $repo_configs/.config/

# xdg-desktop-portal
echo "Copying xdg-desktop-portal settings..."
cp $user_configs/xdg-desktop-portal/portals.conf $repo_configs/.config/xdg-desktop-portal/

# xsettingsd
echo "Copying xsettingsd settings..."
cp $user_configs/xsettingsd/xsettingsd.conf $repo_configs/.config/xsettingsd

# Dolphin
echo "Copying dolphinrc..."
cp $user_configs/dolphinrc $repo_configs/.config/

# kdeglobals
echo "Copying kdeglobals..."
cp $user_configs/kdeglobals $repo_configs/.config/

# Starship
echo "Copying starship settings..."
cp $user_configs/starship.toml $repo_configs/.config/

# ----------------------------------------------------------------
# ICONS
# ----------------------------------------------------------------

user_icons=$HOME/.icons

# default
echo "Copying default icon settings..."
cp $user_icons/default/index.theme $repo_configs/.icons/default/

# ----------------------------------------------------------------
# LOCAL
# ----------------------------------------------------------------

user_shared_locals=$HOME/.local/share

# Dolphin
echo "Copying Dolphin shared settings..."
cp -r $user_shared_locals/dolphin/ $repo_configs/.local/share/
cp -r $user_shared_locals/kxmlgui5/ $repo_configs/.local/share/

# Fonts
echo "Copying shared fonts..."
cp -r /usr/share/fonts/noto/ $repo_configs/.local/share/fonts/
cp -r /usr/share/fonts/noto-nerd-font/ $repo_configs/.local/share/fonts/

echo "Done!"