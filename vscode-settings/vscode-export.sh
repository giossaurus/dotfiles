#!/bin/bash

echo "📥 Exportando configurações do VS Code..."

# Criar diretório se não existir
mkdir -p ~/Developer/dotfiles/vscode-settings

# Copiar configurações
cp ~/.config/Code/User/settings.json ~/Developer/dotfiles/vscode-settings/
cp ~/.config/Code/User/keybindings.json ~/Developer/dotfiles/vscode-settings/

# Exportar extensões instaladas
code --list-extensions > ~/Developer/dotfiles/vscode-settings/extensions-list.txt

echo "✅ Configurações do VS Code exportadas!"
