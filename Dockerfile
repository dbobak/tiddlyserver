FROM node:alpine

VOLUME /data
WORKDIR /app

RUN npm install tiddlyserver

ENV TWS_PORT 8088
ENV TWS_SETTINGS_FILE /data/.config/tiddlyserver.json

EXPOSE ${TWS_PORT}

CMD node /app/node_modules/tiddlyserver/index.js --config /data/.config/tiddlyserver.json --stay-on-error