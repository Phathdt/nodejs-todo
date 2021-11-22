FROM node:16-alpine as builder
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
RUN yarn install
COPY . .
CMD ["node", "server.js"]
