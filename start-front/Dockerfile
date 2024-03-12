# Estágio de construção
FROM node:18.18.0 as build

# Instalação do Angular CLI
RUN npm install -g @angular/cli@17.1.3

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

RUN npm run build

ENV PORT=80

EXPOSE $PORT

CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "80"]
