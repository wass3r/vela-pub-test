FROM alpine:latest

RUN apk add --no-cache curl

COPY docker-entrypoint.sh /docker-entrypoint.sh

CMD ["sh", "-c", "/docker-entrypoint.sh"]
