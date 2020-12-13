FROM node:14.15.0-alpine3.12 as buildintrfront

WORKDIR /app

COPY ./package*.json ./

RUN npm install

COPY ./ ./

EXPOSE 3020

CMD ["npm", "start"]