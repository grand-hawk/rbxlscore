FROM nginx:alpine

RUN apk add --no-cache jq

COPY patterns.json /usr/share/nginx/html/patterns.json

RUN jq . /usr/share/nginx/html/patterns.json

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
