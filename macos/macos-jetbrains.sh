#!/bin/bash

echo "🖥️ Restaurando configurações do IntelliJ IDEA e PyCharm..."

# Restaurar IntelliJ IDEA
if [ -f ~/Developer/dotfiles/macos/jetbrains-settings/intellij-settings.zip ]; then
    echo "📂 Restaurando IntelliJ IDEA..."
    unzip -o ~/Developer/dotfiles/macos/jetbrains-settings/intellij-settings.zip -d ~/Library/Application\ Support/JetBrains/IntelliJIdea2023.3/
    echo "✅ IntelliJ IDEA restaurado!"
fi

# Restaurar PyCharm
if [ -f ~/Developer/dotfiles/macos/jetbrains-settings/pycharm-settings.zip ]; then
    echo "📂 Restaurando PyCharm..."
    unzip -o ~/Developer/dotfiles/macos/jetbrains-settings/pycharm-settings.zip -d ~/Library/Application\ Support/JetBrains/PyCharm2023.3/
    echo "✅ PyCharm restaurado!"
fi

echo "🎉 Configurações das IDEs JetBrains restauradas com sucesso!"
