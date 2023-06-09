FROM node:16.14.2

WORKDIR /usr/src/app

COPY package*.json ./

RUN rm -rf node_modules

RUN npm install

COPY . .

RUN npm run populate-db

EXPOSE 3001

CMD ["npm", "run", "dev:server"]