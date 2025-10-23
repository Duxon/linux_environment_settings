#!/bin/bash

# This script automates the setup of the Linux environment as described in the README.md file.

# Exit immediately if a command exits with a non-zero status.
set -e

# --- Oh My Zsh ---
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Installing Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "Oh My Zsh is already installed."
fi

# --- Powerlevel10k ---
if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]; then
  echo "Installing Powerlevel10k..."
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
else
  echo "Powerlevel10k is already installed."
fi

# --- MesloLGS NF Fonts ---
echo "Installing MesloLGS NF fonts..."
mkdir -p ~/.local/share/fonts
(
  cd ~/.local/share/fonts
  curl -fLO https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
  curl -fLO https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
  curl -fLO https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
  curl -fLO https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
)
echo "Updating font cache..."
fc-cache -f -v

# --- fzf ---
if [ ! -d "$HOME/.fzf" ]; then
  echo "Installing fzf..."
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
else
  echo "fzf is already installed."
fi

# --- ai-shell ---
if ! command -v ai &> /dev/null; then
  echo "Installing ai-shell..."
  sudo npm install -g @builder.io/ai-shell
else
  echo "ai-shell is already installed."
fi

echo "Setup complete! Please restart your shell."
