FROM node:13.12.0-alpine as build

WORKDIR /sinesp-api

ENV PATH /sinesp-api/node_modules/.bin:$PATH

COPY package.json ./

COPY package-lock.json ./

RUN npm install
# RUN npm ci --silent

COPY . ./

CMD ["npm", "start"]
