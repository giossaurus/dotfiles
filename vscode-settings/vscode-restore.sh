#!/bin/bash

echo "🔄 Restaurando configurações do VS Code..."

# Restaurar configurações do usuário
cp ~/Developer/dotfiles/vscode-settings/settings.json ~/.config/Code/User/
cp ~/Developer/dotfiles/vscode-settings/keybindings.json ~/.config/Code/User/

# Restaurar extensões instaladas
xargs -n 1 code --install-extension < ~/Developer/dotfiles/vscode-settings/extensions-list.txt

echo "✅ Configurações do VS Code restauradas!"

