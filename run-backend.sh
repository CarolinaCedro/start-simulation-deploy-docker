#!/bin/bash

./backend.sh

echo "Conectando container na mesma rede: ..."
./network.sh

read -p "Pressione Enter para sair..."
