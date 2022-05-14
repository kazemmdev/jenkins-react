FROM node:14-alpine

ENV USER=node

RUN mkdir -p /app && chown -R  ${USER}:${USER} /app

USER ${USER}

WORKDIR /app

COPY --chown=${USER}:${USER} . .

RUN npm run build