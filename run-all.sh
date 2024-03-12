#!/bin/bash

./backend.sh
frontend_dir="./start-front"


"$backend_dir/backend.sh"
"$frontend_dir/frontend.sh"

echo "Conectando containers na mesma rede: ..."
./network.sh

read -p "Pressione Enter para sair..."
