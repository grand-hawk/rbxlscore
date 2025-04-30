FROM nginx:alpine

RUN apk add --no-cache jq

RUN jq . patterns.json

COPY patterns.json /usr/share/nginx/html/patterns.json

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
