FROM node:16-alpine as build

WORKDIR /ui

COPY package.json .
COPY yarn.lock .
COPY . .

RUN yarn install


EXPOSE 3000:3000

CMD ["yarn", "start"]