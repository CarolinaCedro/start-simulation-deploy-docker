#!/bin/bash

current_path=$(dirname "$0")

cd "$current_path"

#current_branch=$(git branch --show-current)
#echo "Executando o script na branch: $current_branch"

echo "Atualizando o repositório..."
#git pull origin $current_branch

echo "Build and Run - Backend... ##############"

echo "Executando docker-compose down..."
echo "Apagando imagens e containers..."

docker-compose -p compose-backend down --volumes
docker-compose -p compose-backend rm -f

docker image rm compose-backend:homolog

echo "Criando imagens e containers..."
docker-compose -p compose-backend -f docker-compose.yml build
echo "Executando docker-compose up..."
docker-compose -p compose-backend -f docker-compose.yml up -d

echo "Containers em execução: ##################################"
docker ps
echo "##########################################################"
echo "docker-compose Executado com sucesso!"
read -p "Pressione Enter para sair..."
