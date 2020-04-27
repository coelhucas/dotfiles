#!/bin/sh

# Update repo
echo 'Fetch packages'
sudo apt-get update

# Install ZSH
echo 'Installing ZSH...'
sudo apt-get install zsh

# Change default shell
echo 'Changing default shell to zsh...'
sudo chsh -s $(which zsh) $USER

# Install git
echo 'Installing Git...'
sudo apt-get install git