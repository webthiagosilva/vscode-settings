FROM node:20

# Definir o diretório de trabalho
WORKDIR /usr/src/app

# Instalar Python (caso seja necessário para algum build)
RUN apt-get update && apt-get install -y python3 python3-pip

# Instalar ESLint e Prettier globalmente (opcional)
RUN npm install -g eslint prettier

EXPOSE 3000
CMD ["node"]
