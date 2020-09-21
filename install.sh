#!/bin/bash

WMDIR=$HOME/.local/share/themes/no-border/xfwm4/
sudo mkdir -p $WMDIR
sudo touch "${WMDIR}/themerc"

TERMINALDIR=$HOME/.local/share/xfce4/terminal/colorschemes/
sudo mkdir -p $TERMINALDIR
sudo cp "${PWD}/Dracula.theme" $TERMINALDIR

APPEARDIR=$HOME/.themes/
sudo mkdir -p $APPEARDIR

git clone https://github.com/dracula/gtk.git
sudo mv "gtk/" "Dracula/"
sudo cp -r "Dracula/" "${HOME}/.themes/"
WMDRAC=$HOME/.local/share/themes/Dracula/
sudo mkdir -p $WMDRAC
sudo cp -r "Dracula/xfwm4/" $WMDRAC
rm -rf "${PWD}/Dracula/"

#Icons
sudo mkdir -p "${HOME}/.icons/"
sudo cp -r "${PWD}/Papirus-Dark/" "${HOME}/.icons"

#Bash and Powerline
sudo cp -r "${PWD}/omb-stealth-ux/" "${PWD}/.oh-my-bash/"
sudo mv "${PWD}/.oh-my-bash/" $HOME
sudo cp "${HOME}/.bashrc" "${HOME}/.bashrc.obs_backup"
sudo cp "${HOME}/.oh-my-bash/templates/bashrc.osh-template" "${HOME}/.bashrc"
sudo rm -rf "${PWD}/.oh-my-bash/"

#wallpaper
sudo cp "${PWD}/stealth_ux_wallpaper.jpg" "/usr/share/xfce4/backdrops/"

echo Done!
