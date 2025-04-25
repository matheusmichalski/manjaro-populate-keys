#!/bin/bash

sudo rm -r /var/lib/pacman/sync
sudo pacman -Syy
sudo pacman -Syyu

sudo pacman-key --init
sudo pacman-key --populate manjaro

sudo pacman-key --refresh-keys

sudo pacman -Syu
