FROM node:8
WORKDIR /usr/src/app
COPY package*.json ./
COPY . .
CMD [ "npm", "start" ]