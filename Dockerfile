FROM node:16-alpine
MAINTAINER Software Craftsmen GmbH & Co KG <office@software-craftsmen.at>

RUN apk add --no-cache \
    git \
    chromium \
    ca-certificates

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

CMD [ "node" ]
