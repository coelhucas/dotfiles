#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	# install vimplug
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
      		 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

	# install zsh
        sudo apt install zsh
	chsh -s $(which zsh)
fi

# TODO: for macOS
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim



# install zsh | TODO: check if zsh was proper installed
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# symlinks
ln -s ~/projects/dotfiles/.config ~
ln -s ~/projects/dotfiles/zsh/.zshrc ~ 


