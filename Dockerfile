FROM nginx:1.18.0-alpine

COPY ./dist/ /usr/share/nginx/html
COPY ./nginx-conf/custom.conf /etc/nginx/conf.d/default.conf
COPY ./nginx-conf/security-headers.conf /etc/nginx/security-headers.conf

CMD ["nginx", "-g", "daemon off;"]
