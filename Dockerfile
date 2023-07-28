# Use a imagem oficial do Node.js
FROM node:16

# Define o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copia o package.json e package-lock.json para o diretório de trabalho
COPY ./package*.json ./

# Instala as dependências do aplicativo
RUN npm install

# Copia o restante dos arquivos do aplicativo para o diretório de trabalho
COPY ./ .

# Expõe a porta em que o aplicativo será executado (ajuste conforme necessário)
EXPOSE 3000

# Comando para iniciar o aplicativo
CMD ["npm", "start"]
