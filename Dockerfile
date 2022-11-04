FROM node:alpine

WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
EXPOSE 8888
CMD [ "npm", "start" ]