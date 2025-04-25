#!/bin/bash

# Remove sync folder (be cautious, this can cause issues if not done for a specific reason)
sudo rm -r /var/lib/pacman/sync

# Refresh package database
sudo pacman -Syy

# Initialize pacman keyring
sudo pacman-key --init

# Populate keyring with Arch and Manjaro keys
sudo pacman-key --populate archlinux
sudo pacman-key --populate manjaro

# Refresh the keys and allow weak key signatures
sudo pacman-key --refresh-keys --allow-weak-key-signatures

# Update the system and upgrade packages
sudo pacman -Syu
