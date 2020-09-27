FROM alpine

RUN apk update && apk add nginx

COPY nginx.conf /etc/nginx/nginx.conf

COPY index.html /usr/share/nginx/html/