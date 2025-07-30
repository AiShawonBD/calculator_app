FROM nginx:alpine

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY ../templates/ ./
COPY ../docker/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
