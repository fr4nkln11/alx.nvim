#!/bin/bash

# check for Neovim
if ! command -v nvim &> /dev/null; then
	echo "Neovim is not installed, Downloading Neovim..."
	curl -Lo ~/nvim-linux64.tar.gz https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz

	echo "Extracting Neovim..."
	tar xzf ~/nvim-linux64.tar.gz -C ~/

	echo "Adding Neovim to PATH..."
	echo 'export PATH=$PATH:$HOME/nvim-linux64/bin' >> ~/.bashrc
	export PATH=$PATH:$HOME/nvim-linux64/bin

	echo "Neovim installation complete."
	nvim --version	
	
	rm ~/nvim-linux64.tar.gz
fi

mkdir -p ~/.config/nvim

# install config
git clone --depth 1 https://github.com/fr4nkln11/alx.nvim.git ~/.config/nvim

echo "ALX.nvim configuration complete!"
