#!/bin/bash

# Verifica se o Waybar está rodando
if pgrep -x "waybar" > /dev/null
then
    # Se estiver rodando, envia o sinal SIGTERM para encerrar o Waybar
    killall -q waybar
    echo "Waybar encerrado."
else
    # Se não estiver rodando, inicia o Waybar
    waybar &
    echo "Waybar iniciado."
fi
