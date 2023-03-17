FROM node:alpine

WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
EXPOSE 443
EXPOSE 80/UDP
CMD [ "npm", "start" ]