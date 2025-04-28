FROM nginx:alpine

COPY patterns.json /usr/share/nginx/html/patterns.json

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
