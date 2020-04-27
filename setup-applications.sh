#!/bin/bash

sudo su

echo 'Fetching and installing packages...'
sudo apt-get -qq update
sudo apt-get install -y \
    build-essential \
    curl \
    cmake \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

echo 'Installing snaps...'
sudo snap install slack --classic
sudo snap install code --classic
sudo snap install vlc --channel=latest/stable
sudo snap install postman
sudo snap install gimp
sudo snap install inkscape
sudo snap install krita
sudo snap install audacity
sudo snap install obs-studio


# Install yarn
if ! [ -x "$(command -v yarn)" ]; then
    echo 'Installing yarn...'
    sh -c "curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -"
    sh -c "echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list"
    sudo apt update && sudo apt install -y --no-install-recommends yarn
fi

# Install docker
if ! [ -x "$(command -v docker)" ]; then
    echo 'Installing docker...'
    sh -c "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -"
    sh -c "sudo add-apt-repository \"deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable\""
    sudo apt-get install -y docker-ce
    echo 'Adding current user onto docker group...'
    sudo usermod -aG docker $USER
fi

# Install docker-compose
if ! [ -x "$(command -v docker-compose)" ]; then
    echo 'Installing docker-compose...'
    sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
fi
