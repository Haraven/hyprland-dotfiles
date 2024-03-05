#!/usr/bin/env bash

# Check release
if [ ! -f /etc/arch-release ] ; then
    exit
fi

# source variables
ScrDir=`dirname "$(realpath "$0")"`
source $ScrDir/globalcontrol.sh

# Check for updates
get_aurhlpr
aur=`${aurhlpr} -Qua | wc -l`
ofc=`checkupdates | wc -l`

# Check for flatpak updates
if pkg_installed flatpak ; then
    fpk=`flatpak remote-ls --updates | wc -l`
    fpk_disp="\n󰏓 Flatpak $fpk"
    fpk_exup="; flatpak update"
else
    fpk=0
    fpk_disp=""
fi

# Calculate total available updates
upd=$(( ofc + aur + fpk ))

# Show tooltip
if [ $upd -eq 0 ] ; then
    echo "{\"text\":\"\", \"tooltip\":\" Packages are up to date\"}"
else
    echo "{\"text\":\"$upd\", \"tooltip\":\"󱓽 Official $ofc\n󱓾 AURs $aur$fpk_disp\"}"
fi

# Trigger upgrade
if [ "$1" == "up" ] ; then
    kitty --title systemupdate sh -c "echo -e \"\033[36;1mSYSTEM UPDATE\033[0m\" && echo -e \"---\" && sudo pacman -Sy && sudo powerpill -Su && ${aurhlpr} -Su $fpk_exup && echo -e \"---\" && echo -e \"Press [\033[37;1mEnter\033[0m] to exit.\" && read"
fi