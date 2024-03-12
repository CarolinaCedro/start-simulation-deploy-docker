#!/bin/bash

current_path=$(dirname "$0")

cd "$current_path"

./frontend.sh

echo "Conectando container na mesma rede: ..."
./network.sh

read -p "Pressione Enter para sair..."
