#!/bin/bash
clear

# Cabeçalho ASCII
cat <<"EOF"
  ____ _                                
 / ___| | ___  __ _ _ __    _   _ _ __  
| |   | |/ _ \/ _` | '_ \  | | | | '_ \ 
| |___| |  __/ (_| | | | | | |_| | |_) |
 \____|_|\___|\__,_|_| |_|  \__,_| .__/ 
                                 |_|    
EOF

sudo -v

# Limpa o cache do pacman
echo "Limpando o cache do pacman..."
yes | sudo pacman -Sc
sleep 2

echo "Limpando o cache do yay..."
yes | yay -Sc
sleep 2

echo "Limpando o cache do paru..."
yes | paru -Sc
sleep 2

echo "Removendo dependências órfãs com pacman..."
yes | sudo pacman -Rns $(pacman -Qtdq)
sleep 2

echo "Removendo dependências órfãs com yay..."
yes | yay -Qdtq | yay -Rns -
sleep 2

echo "Removendo dependências órfãs com paru..."
yes | paru -Qdtq | paru -Rns -
sleep 2

# Limpeza do cache do paru (AUR)
echo "Limpando o cache do paru..."
yes | paru -Scc
sleep 2

echo "Limpeza concluída."
