FROM node:18.20.3

WORKDIR /usr/src/{{app_name}}
RUN mkdir -p /usr/src/{{app_name}}/logs

# install app dependencies
COPY package*.json ./

RUN npm i

# bundle app ADD source
COPY . .

EXPOSE 3000

CMD [ "node", "server/loader.js" ]
