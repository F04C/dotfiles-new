#!/bin/bash
clear

figlet "Cleanup"

sudo pacman -Rns $(pacman -Qtdq)

yay -Scc

notify-send "Limpeza completa"
echo 
echo ":: Limpeza completa"
sleep 2
kitty @ close-window
