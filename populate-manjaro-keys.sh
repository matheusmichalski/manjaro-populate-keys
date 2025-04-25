#!/bin/bash

sudo rm -r /var/lib/pacman/sync
sudo pacman -Syy

sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman-key --populate manjaro

sudo pacman-key --refresh-key --allow-weak-key-signatures

sudo pacman -Syyu
sudo pacman -Syu
