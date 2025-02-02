#!/bin/bash

echo "⚙️ Aplicando ajustes do macOS..."

# Mostrar caminho completo no Finder
defaults write com.apple.finder ShowPathbar -bool true

# Mostrar extensões de arquivos no Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Mostrar arquivos ocultos no Finder
defaults write com.apple.finder AppleShowAllFiles -bool true

# Ocultar ícones do desktop
defaults write com.apple.finder CreateDesktop -bool false && killall Finder

# Acelerar animações do Dock
defaults write com.apple.dock autohide-delay -float 0; killall Dock

# Ativar repetição de tecla ao segurar
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

echo "✅ Ajustes do macOS aplicados!"
