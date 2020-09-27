FROM alpine

RUN apk update && apk add nginx

RUN adduser -D -g 'www' www

RUN mkdir /www && chown -R www:www /var/lib/nginx && chown -R www:www /www

COPY nginx.conf /etc/nginx/nginx.conf

COPY index.html /www