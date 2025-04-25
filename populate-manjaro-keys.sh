#!/bin/bash

sudo rm -r /var/lib/pacman/sync
sudo pacman-mirrors --fasttrack 

sudo pacman -Syy
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman-key --populate manjaro

sudo pacman-key --refresh-keys

sudo pacman -Syyu
sudo pacman -Syu
