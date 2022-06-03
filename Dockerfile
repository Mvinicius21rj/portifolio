FROM node:14-alpine

RUN mkdir -p /home/node/react/node_modules && chown -R node:node /home/node/react

WORKDIR /home/node/react

COPY package*.json ./

USER node

RUN npm install 

COPY --chown=node:node . .

EXPOSE 3000

CMD [ "npm", "start" ]