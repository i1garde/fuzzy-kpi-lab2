FROM alpine

RUN apk update && apk add nginx && mkdir -p /run/nginx

COPY nginx.conf /etc/nginx/nginx.conf

COPY index.html /usr/share/nginx/html/

EXPOSE 8008

CMD ["nginx", "-g", "daemon off;"]