FROM alpine:3.22.0 AS base

RUN apk add --update --no-cache nodejs npm

WORKDIR /backend

COPY package.json .

RUN npm install

FROM base AS dev

# COPY package.json .

# RUN npm install

ENV ENVIRONMENT=dev

CMD ["node", "app.js"]

FROM base AS prod

ENV ENVIRONMENT=prod

COPY . .

RUN npm install

ENTRYPOINT ["node", "app.js"]
