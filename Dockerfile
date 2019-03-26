FROM node:11

WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn install --frozen-lockfile --production

COPY . .

RUN yarn run tsc

EXPOSE 3000
CMD [ "yarn", "start" ]