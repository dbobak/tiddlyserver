FROM node:alpine

VOLUME /data
WORKDIR /app

RUN apk update && \
    apk add --no-cache tzdata
RUN npm install tiddlyserver

ENV TWS_PORT 8080
ENV TWS_SETTINGS_FILE /data/.config/tiddlyserver.json

EXPOSE ${TWS_PORT}

CMD node /app/node_modules/tiddlyserver/index.js --config /data/.config/tiddlyserver.json --stay-on-error
