# Define a imagem base que será usada como ponto de partida
FROM openjdk:17-alpine

#Autor
MAINTAINER Carolina Cedro

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o arquivo JAR do seu projeto para o contêiner
COPY target/start-back-0.0.1-SNAPSHOT.jar /app

# Define o comando padrão a ser executado quando o contêiner for iniciado
CMD ["java", "-jar", "start-back-0.0.1-SNAPSHOT.jar"]


#Porta padrão
EXPOSE 6000
