FROM alpine

RUN apk update && apk add nginx

#COPY index.html /etc/nginx/html/index.html

#EXPOSE 80