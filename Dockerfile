FROM node:latest

RUN apt-get update && apt-get install -y curl net-tools

WORKDIR "/usr/src/app"

COPY package.json . 
COPY package-lock.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "start"]