FROM  node:16.14.0-alpine3.14
LABEL maintainer="Othmane SENOUCI <othmane.senouci@luxairgroup.lu>"
ENV NODE_ENV production

WORKDIR /app
COPY ./backend .
RUN yarn install --frozen-lockfile


RUN yarn build
EXPOSE 1337

CMD ["yarn", "start"]