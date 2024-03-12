# Compose

## Configuração

Dentro dessa pasta raíz, serão clonados os respectivos repositórios de forma separadas, como por exemplo, as pastas `backend` e `frontend`.

Exemplo:
  https://github.com/usuario/frontend e https://github.com/usuario/backend
 
 Em cada pasta do repositório, além do código fonte haverá um arquivo `Dockerfile` (que irá montar e criar a imagem a partir do código fonte), e um arquivo `docker-compose.yml`, para definir as portas de exposição, nome do serviço e do container que será criado e executado.
 E também, deverá ter um arquivo `.env`, onde ficarão as variáveis a serem executadas no container através do Docker Compose;
 
 
 ## Execução
 
 Foram criado alguns arquivos para a execução automática, sendo eles:
 
 `run-all.sh`
 `run-backend.sh`
 `run-frontend.sh`
 `network.sh`
 
 
 segmentados de 2 formas:
 
 - `primeira forma:` Através do script `run-all.sh`, será possível fazer a execução automática de ambos os serviços (backend e frontend) de forma automática, removendo os containers ativos, removendo as imagens antigas e gerando uma nova imagem e subindo cada respectivo container de forma automática, também conectando a uma rede pré definida em `network.sh`.
 
 - `segunda forma:` Será possível executar de forma 'manual' somente o serviço desejado, onde também irá reconectado novamente a rede pré definida em `network.sh`.
 Exemplo:
 Se necessário somente recriar uma nova imagem e subir um novo container do frontend, poderá executar apenas o arquivo `run-frontend.sh`. Da mesma forma para o backend, a partir do `run-backend.sh`.
 
 ### Arquivo Network
 
 No arquivo `network.sh`, é possível definir e adicionar/remover os containers dentro da variável `$containers`, que estarão sendo incluídos na rede, para ocorrer a comunicação entre os serviços.
 
 Exemplo:
 
 
 `NETWORK_NAME="meuprojeto-network"`
 
 `containers=("container-backend" "container-frontend")`
 
 Indica que os containers declarados acima irão ser conectados na rede `meuprojeto-network` através do script `network.sh`.