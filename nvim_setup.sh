#!/bin/bash

FILE="/opt/nvim-linux64/bin/nvim"

echo Script started....
if [ -e "$FILE" ]; then
	echo nvim installed
	echo Script end
else
	echo NEOVIM not installed...
	sudo apt update
	sudo apt install git make gcc ripgrep unzip git xclip curl fzf wget
	echo Pre-Install steps completed...
	curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
	sudo mkdir -p /opt/nvim-linux64
	sudo chmod a+rX /opt/nvim-linux64
	sudo tar -C /opt -xzf nvim-linux64.tar.gz
	sudo ln -sf /opt/nvim-linux64/bin/nvim /usr/local/bin/
	echo NEOVIM installed
	sudo rm -rf nvim-linux64.tar.gz
	echo removed NEOVIM zip
	echo Script end
fi










