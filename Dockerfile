FROM node:16-alpine

RUN npm i -g serve

WORKDIR /var/www
RUN chown node:node /var/www
COPY --chown=node:node public /var/www/

USER node

CMD [ "serve", "/var/www" ]
