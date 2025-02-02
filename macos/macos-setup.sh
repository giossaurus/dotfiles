#!/bin/bash

echo "🍏 Configurando macOS..."

# Instalar Homebrew se ainda não estiver instalado
if ! command -v brew &> /dev/null; then
    echo "🍺 Instalando Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Restaurar pacotes via Brewfile
echo "📦 Instalando pacotes via Homebrew..."
brew bundle --file=~/Developer/dotfiles/macos/Brewfile

# Configurar Zsh e Powerlevel10k
echo "🐚 Configurando Zsh..."
ln -sf ~/Developer/dotfiles/macos/.zshrc ~/.zshrc
ln -sf ~/Developer/dotfiles/macos/.p10k.zsh ~/.p10k.zsh
ln -sf ~/Developer/dotfiles/macos/.aliases ~/.aliases
ln -sf ~/Developer/dotfiles/macos/.exports ~/.exports
ln -sf ~/Developer/dotfiles/macos/.functions ~/.functions

# Configurar Git
echo "⚙ Configurando Git..."
ln -sf ~/Developer/dotfiles/macos/.gitconfig ~/.gitconfig

# Configurar Kitty
echo "🎨 Configurando Kitty..."
mkdir -p ~/.config/kitty
ln -sf ~/Developer/dotfiles/macos/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf

echo "✅ Configuração do macOS concluída!"
