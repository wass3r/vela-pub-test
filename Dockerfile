ARG node_ver=18

FROM node:${node_ver}-bullseye

RUN apk add --no-cache curl

COPY server2.js /server2.js

COPY docker-entrypoint.sh /docker-entrypoint.sh

CMD ["sh", "-c", "/docker-entrypoint.sh"]
