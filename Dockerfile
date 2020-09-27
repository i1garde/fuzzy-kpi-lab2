FROM alpine

RUN apk update && apk add nginx

RUN mkdir -p /run/nginx

COPY nginx.conf /etc/nginx/nginx.conf

COPY index.html /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]