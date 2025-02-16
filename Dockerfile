FROM node:lts-alpine3.13

LABEL maintainer="Chris M. Fritsche"

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD ["node", "index.js"]