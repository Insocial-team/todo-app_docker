FROM node:14

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json ./
COPY package-lock.json ./

RUN npm ci

COPY . .

EXPOSE 3000

CMD ["npm", "run","dev"]