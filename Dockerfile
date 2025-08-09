# Use imagem oficial do Node.js
FROM node:20

# Crie diretório de trabalho
WORKDIR /app

# Copie os arquivos de dependências
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie o restante do código
COPY . .

# Exponha a porta (ajuste conforme sua aplicação)
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]