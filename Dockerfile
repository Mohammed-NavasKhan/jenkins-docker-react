FROM node:20.9.0-alpine3.18

RUN addgroup app && adduser -S -G app app

USER app

WORKDIR /app

RUN mkdir data

COPY --chown=app:app package*.json .

RUN npm install

COPY . .

ENV API_URL=https://api.github.com/

EXPOSE 3001

CMD ["npm", "run", "dev"]
