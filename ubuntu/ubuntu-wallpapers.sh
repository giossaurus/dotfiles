#!/bin/bash

echo "🖼️ Restaurando papéis de parede..."

# Criar a pasta de wallpapers do usuário, se não existir
mkdir -p ~/Imagens/Wallpapers

# Copiar os wallpapers do dotfiles para a pasta de imagens
cp -r ~/Developer/dotfiles/ubuntu/wallpapers/* ~/Imagens/Wallpapers/

echo "✅ Papéis de parede copiados!"

# Definir um papel de parede padrão (substitua pelo nome do seu arquivo)
DEFAULT_WALLPAPER="wallpaper.jpg"

if [[ -f ~/Imagens/Wallpapers/$DEFAULT_WALLPAPER ]]; then
    gsettings set org.gnome.desktop.background picture-uri "file://$HOME/Imagens/Wallpapers/$DEFAULT_WALLPAPER"
    gsettings set org.gnome.desktop.background picture-uri-dark "file://$HOME/Imagens/Wallpapers/$DEFAULT_WALLPAPER"
    echo "✅ Papel de parede padrão aplicado!"
else
    echo "⚠️ O arquivo $DEFAULT_WALLPAPER não foi encontrado. Defina um manualmente."
fi

echo "🖼️ Personalização de papéis de parede concluída!"
