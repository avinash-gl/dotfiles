#!/bin/bash
set -e

# ==============
#   i3WM Setup #
# ==============

# ---- 1. Update & Install base packages ----
echo "[*] Updating system and installing essentials..."
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm git stow ttf-jetbrains-mono-nerd rofi picom playerctl\
    firefox unzip wget curl base-devel
echo "[*] System updated and essential packages installed successfully..."


echo "[*] INSTALLING YAY PACKAGE MANAGER..."
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -Syu
echo "[*] INSTALLED YAY PACKAGE MANAGER..."


cd ~/dotfiles


echo "[*] Stowing i3 config file..."
if [ -d "$HOME/.config/i3" ]; then
    rm -r "$HOME/.config/i3"
fi

stow i3
echo "[*] Sucessfully stowed i3 config file..."


echo "[*] INSTALLING PYWAL16..."
yay -S python-pywal16 --noconfirm
stow pywal
echo "[*] INSTALLED AND STOWED PYWAL16..."


echo "[*] INSTALLING AND SETTING UP TERMINAL..."
sudo pacman -S kitty
stow kitty
echo "[*] TERMINAL SETUP COMPLETE..."


echo "[*] INSTALLING ROFI..."
sudo pacman -S rofi
stow rofi
echo "[*] ROFI SETUP COMPLETE..."


echo "[*] SETTING UP POLYBAR"
sudo pacman -S polybar
stow polybar
mkdir -p $HOME/.local/bin
stow scripts
echo "[*] POLYBAR SETUP COMPLETE..."


echo "[*] SETTING UP PICOM"
sudo pacman -S picom
stow picom
echo "[*] PICOM SETUP COMPLETE..."


echo "[*] SETTING UP WALLPAPERS"
stow wallpapers
echo "[*] WALLPAPERS SETUP COMPLETE..."







