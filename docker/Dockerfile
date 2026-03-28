FROM nginx:alpine

# Remove default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy static front-end files (from project root)
COPY ../templates/ /usr/share/nginx/html/

# Copy custom Nginx config (same folder)
COPY docker/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]