# Base image
FROM node:20.9.0-alpine3.18 AS base

# Dependencies stage
FROM base as deps
RUN apk add --no-cache libc6-compat
WORKDIR /app
COPY package*.json ./
RUN npm ci

# Build stage
FROM base AS builder
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY . .
RUN npm run build

# production environment
FROM nginx:stable-alpine

COPY --from=builder /app/dist /usr/share/nginx/html
# If you are using react-router, uncomment below line
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

EXPOSE 3010
CMD ["nginx", "-g", "daemon off;"]
