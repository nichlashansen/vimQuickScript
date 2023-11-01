#!/bin/bash

# Install Neovim using Homebrew
brew install neovim

# Backup existing Neovim configurations
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

# Clone the new Neovim configuration from the AstroNvim repository
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

# Start Neovim
nvim
