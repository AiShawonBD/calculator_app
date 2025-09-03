# Stage 1: Build Stage
FROM alpine:latest AS build

WORKDIR /app

COPY ../templates/ ./

# Stage 2: Production Stage
FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY --from=build /app/ ./

COPY docker/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
