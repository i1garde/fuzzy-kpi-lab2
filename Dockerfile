FROM alpine

RUN apk update && apk add nginx && mkdir -p /run/nginx

ARG path=/etc/nginx/nginx.conf

ARG path2=/usr/share/nginx/html/

COPY nginx.conf $path 

COPY index.html $path2

EXPOSE 8008

CMD ["nginx", "-g", "daemon off;"]
