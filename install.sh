echo "🚀 Iniciando configuração dos dotfiles..."

# Configurar permissões para os scripts de setup
chmod +x ~/Developer/dotfiles/ubuntu/ubuntu-setup.sh

# Configurar Git de acordo com o sistema operacional
echo "🚀 Configurando Git..."

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "🍏 Configurando Git no macOS..."
    ln -sf ~/Developer/dotfiles/macos/.gitconfig ~/.gitconfig
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "🐧 Configurando Git no Ubuntu..."
    ln -sf ~/Developer/dotfiles/ubuntu/.gitconfig ~/.gitconfig
else
    echo "❌ Sistema não reconhecido."
    exit 1
fi

echo "✅ Git configurado!"

# Rodar a configuração do Ubuntu, se for o sistema detectado
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "🐧 Rodando setup do Ubuntu..."
    bash ~/Developer/dotfiles/ubuntu/ubuntu-setup.sh
fi

echo "✅ Configuração concluída!"
