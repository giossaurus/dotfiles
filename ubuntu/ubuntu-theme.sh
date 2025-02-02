echo "🎨 Restaurando configurações do GNOME..."

# Restaurar configurações do GNOME
if command -v dconf &> /dev/null; then
    dconf load / < ~/Developer/dotfiles/ubuntu/gnome-settings.dconf
    echo "✅ Configurações do GNOME restauradas!"
fi

# Restaurar extensões do GNOME
if command -v gnome-extensions &> /dev/null; then
    while read extension; do
        gnome-extensions enable "$extension"
    done < ~/Developer/dotfiles/ubuntu/gnome-extensions.txt
    echo "✅ Extensões do GNOME restauradas!"
fi

# Restaurar configurações do terminal GNOME
if command -v gnome-terminal &> /dev/null; then
    dconf load /org/gnome/terminal/ < ~/Developer/dotfiles/ubuntu/gnome-terminal.dconf
    echo "✅ Configurações do Terminal GNOME restauradas!"
fi

# Restaurar fontes personalizadas
if [ -d ~/Developer/dotfiles/ubuntu/fonts ]; then
    cp -r ~/Developer/dotfiles/ubuntu/fonts ~/.local/share/fonts
    fc-cache -f -v
    echo "✅ Fontes personalizadas restauradas!"
fi

echo "🎨 Personalização do Ubuntu concluída!"
