FROM node:20.15.1-alpine AS base

RUN npm install -g npm@latest && \
    npm install -g http-server

WORKDIR /home/app

COPY package.json* package-lock.json* ./

#RUN npm install

COPY . .

RUN ls -a

CMD tail -f /dev/null
#ENTRYPOINT [ "sh", "./entrypoint.sh" ]