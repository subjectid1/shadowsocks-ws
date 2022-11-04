FROM node:alpine

WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
EXPOSE 9229
CMD [ "npm", "start" ]