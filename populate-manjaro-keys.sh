#!/bin/bash

sudo rm -r /var/lib/pacman/sync
sudo pacman -Sy

sudo pacman-key --init
sudo pacman-key --populate manjaro

sudo pacman -Syu
