#!/bin/bash
clear

cat <<"EOF"
  ____ _                                
 / ___| | ___  __ _ _ __    _   _ _ __  
| |   | |/ _ \/ _` | '_ \  | | | | '_ \ 
| |___| |  __/ (_| | | | | | |_| | |_) |
 \____|_|\___|\__,_|_| |_|  \__,_| .__/ 
                                 |_|    

EOF

sudo pacman -Rns $(pacman -Qtdq)

yay -Scc

notify-send "Limpeza completa"
echo 
echo ":: Limpeza completa"
sleep 2
kitty @ close-window
