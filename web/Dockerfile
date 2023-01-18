FROM node:alpine

WORKDIR /app

COPY . .

RUN npm install --global serve


CMD [ "serve", "/app" ]