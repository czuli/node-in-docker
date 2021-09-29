FROM node:12
COPY ./application

WORKDIR /application
CMD node index.js

EXPOSE 80
