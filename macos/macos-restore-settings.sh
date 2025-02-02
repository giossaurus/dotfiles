#!/bin/bash

echo "🔄 Restaurando configurações do macOS..."

# Restaurar configurações do sistema
defaults import ~/Developer/dotfiles/macos/system-settings/macos-defaults.plist

# Restaurar aplicativos da App Store
xargs mas install < ~/Developer/dotfiles/macos/system-settings/mac-appstore-apps.txt

# Restaurar pacotes do Homebrew
xargs brew install < ~/Developer/dotfiles/macos/system-settings/brew-packages.txt
xargs brew install --cask < ~/Developer/dotfiles/macos/system-settings/brew-casks.txt

# Restaurar configurações do Terminal e iTerm2
defaults import com.apple.terminal ~/Developer/dotfiles/macos/system-settings/terminal-settings.plist
cp ~/Developer/dotfiles/macos/system-settings/com.googlecode.iterm2.plist ~/Library/Preferences/

# Restaurar configurações do Zsh e Oh My Zsh
cp ~/Developer/dotfiles/macos/system-settings/.zshrc ~/.zshrc
cp ~/Developer/dotfiles/macos/system-settings/.p10k.zsh ~/.p10k.zsh

echo "✅ Configurações do macOS restauradas com sucesso!"
