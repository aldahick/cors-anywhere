FROM node:12.18-alpine

COPY package*.json ./
RUN npm install --production

COPY lib ./lib
COPY server.js ./

CMD npm start
