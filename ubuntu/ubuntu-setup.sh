echo "🐧 Configurando Ubuntu..."

# Atualizar pacotes
sudo apt update && sudo apt upgrade -y

# Instalar pacotes listados
echo "📦 Instalando pacotes do APT..."
sudo xargs apt install -y < ~/Developer/dotfiles/ubuntu/APT-packages.txt

# Instalar pacotes Snap
echo "📦 Instalando pacotes Snap..."
while read -r package; do
    sudo snap install "$package"
done < ~/Developer/dotfiles/ubuntu/snap-packages.txt

# Restaurar pacotes Homebrew
if command -v brew &> /dev/null; then
    echo "🍺 Instalando pacotes via Brewfile..."
    brew bundle --file=~/Developer/dotfiles/ubuntu/Brewfile
fi


# Configurar Zsh e Oh My Zsh
echo "🐚 Configurando Zsh..."
ln -sf ~/Developer/dotfiles/ubuntu/.zshrc ~/.zshrc
ln -sf ~/Developer/dotfiles/ubuntu/.p10k.zsh ~/.p10k.zsh
ln -sf ~/Developer/dotfiles/ubuntu/.aliases ~/.aliases
ln -sf ~/Developer/dotfiles/ubuntu/.exports ~/.exports
ln -sf ~/Developer/dotfiles/ubuntu/.functions ~/.functions

# Configurar Git
echo "⚙ Configurando Git..."
ln -sf ~/Developer/dotfiles/ubuntu/.gitconfig ~/.gitconfig

# Configurar Kitty
echo "🎨 Configurando Kitty..."
mkdir -p ~/.config/kitty
ln -sf ~/Developer/dotfiles/ubuntu/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf

echo "✅ Configuração do Ubuntu concluída!"
