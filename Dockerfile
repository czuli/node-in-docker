FROM node:12
WORKDIR /application

COPY package.json /app
RUN npm install

COPY . /application
CMD node index.js

EXPOSE 8081
