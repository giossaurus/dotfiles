#!/bin/bash

echo "📥 Extraindo configurações do macOS..."

# Capturar configurações do sistema
defaults read > ~/Developer/dotfiles/macos/system-settings/macos-defaults.plist

# Capturar aplicativos instalados
mas list > ~/Developer/dotfiles/macos/system-settings/mac-appstore-apps.txt
ls /Applications > ~/Developer/dotfiles/macos/system-settings/mac-installed-apps.txt

# Capturar pacotes do Homebrew
brew list --formula > ~/Developer/dotfiles/macos/system-settings/brew-packages.txt
brew list --cask > ~/Developer/dotfiles/macos/system-settings/brew-casks.txt

# Capturar configurações do Terminal e iTerm2
defaults read com.apple.terminal > ~/Developer/dotfiles/macos/system-settings/terminal-settings.plist
cp ~/Library/Preferences/com.googlecode.iterm2.plist ~/Developer/dotfiles/macos/system-settings/

# Capturar configurações do Zsh e Oh My Zsh
cp ~/.zshrc ~/.p10k.zsh ~/Developer/dotfiles/macos/system-settings/

echo "✅ Configurações do macOS extraídas com sucesso!"
