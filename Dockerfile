FROM alpine

RUN apk update && apk add nginx && mkdir /etc/nginx/html

COPY index.html /etc/nginx/html/index.html

EXPOSE 80