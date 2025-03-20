# Meus Dotfiles

Este repositório contém meus arquivos de configuração (**dotfiles**) para **Ubuntu** e **macOS**, incluindo personalizações do terminal, Git, pacotes, atalhos, temas e muito mais.

## 📂 Estrutura do Repositório

```
dotfiles/
│── macos/
│   ├── .zshrc                # Configuração do Zsh no macOS
│   ├── .p10k.zsh             # Configuração do Powerlevel10k
│   ├── .gitconfig            # Configuração do Git
│   ├── Brewfile              # Lista de pacotes Homebrew
│   ├── macos-setup.sh        # Instalação automática no macOS
│   ├── macos-settings.sh     # Ajustes do macOS (Finder, Dock, etc.)
│   ├── macos-wallpapers.sh   # Restaurar papéis de parede
│── ubuntu/
│   ├── .zshrc                # Configuração do Zsh no Ubuntu
│   ├── .p10k.zsh             # Configuração do Powerlevel10k
│   ├── .gitconfig            # Configuração do Git
│   ├── APT-packages.txt      # Pacotes instalados via APT
│   ├── snap-packages.txt     # Pacotes instalados via Snap
│   ├── Brewfile              # Lista de pacotes Homebrew (se usado no Ubuntu)
│   ├── ubuntu-setup.sh       # Instalação automática no Ubuntu
│   ├── ubuntu-theme.sh       # Configurações visuais do GNOME
│   ├── ubuntu-wallpapers.sh  # Restaurar papéis de parede
│── shared/
│   ├── .aliases              # Atalhos comuns
│   ├── .exports              # Variáveis de ambiente
│   ├── .functions            # Funções úteis
│── install.sh                # Script automático para detectar e instalar dotfiles
│── README.md                 # Documentação do repositório
│── LICENSE                    # Licença do projeto
```

---

## ⚙️ **Instalação Automática**
Para restaurar todos os dotfiles e configurações no **Ubuntu** ou **macOS**, basta rodar:

```sh
bash ~/Developer/dotfiles/install.sh
```

O script detecta o sistema e executa os ajustes corretos.

---

## 🐧 **Instalação no Ubuntu**
Caso queira rodar os scripts individualmente:

### **1️⃣ Restaurar pacotes e configurações**
```sh
bash ~/Developer/dotfiles/ubuntu/ubuntu-setup.sh
```

### **2️⃣ Restaurar temas e ajustes do GNOME**
```sh
bash ~/Developer/dotfiles/ubuntu/ubuntu-theme.sh
```

### **3️⃣ Restaurar papéis de parede**
```sh
bash ~/Developer/dotfiles/ubuntu/ubuntu-wallpapers.sh
```

---

## 🍏 **Instalação no macOS**
Para rodar os scripts individualmente:

### **1️⃣ Restaurar pacotes e configurações**
```sh
bash ~/Developer/dotfiles/macos/macos-setup.sh
```

### **2️⃣ Aplicar ajustes no macOS (Finder, Dock, atalhos, etc.)**
```sh
bash ~/Developer/dotfiles/macos/macos-settings.sh
```

### **3️⃣ Restaurar papéis de parede**
```sh
bash ~/Developer/dotfiles/macos/macos-wallpapers.sh
```

---

## 📦 **O que está incluído?**
✅ Configuração completa do **Zsh** e **Powerlevel10k**  
✅ Atalhos personalizados (**.aliases, .exports, .functions**)  
✅ Configuração do **Git**  
✅ Lista de pacotes instalados no **Ubuntu** (APT, Snap, Brew)  
✅ Lista de pacotes instalados no **macOS** (Homebrew)  
✅ Scripts para instalar **todos os pacotes automaticamente**  
✅ Ajustes do **macOS** (Finder, Dock, atalhos)  
✅ Configuração do **GNOME** no Ubuntu  
✅ Restaurar **papéis de parede personalizados**  

---

## 🚀 **Como adicionar novos dotfiles?**
1️⃣ **Copie o arquivo para o repositório**, exemplo:
```sh
cp ~/.zshrc ~/Developer/dotfiles/macos/
```
2️⃣ **Adicione ao Git**
```sh
cd ~/Developer/dotfiles
git add .
git commit -m "💾 Atualizando dotfiles"
git push origin main
```
Agora os dotfiles estão salvos para a próxima reinstalação!

---

## 📜 **Licença**
Este repositório está sob a licença **MIT**. Use e modifique livremente.

