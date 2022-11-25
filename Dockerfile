FROM node:16

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

#RUN npm ci

RUN npm install -g serve

COPY . .

ENTRYPOINT [ "serve", "-s", "build" ]
