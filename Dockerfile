FROM nginx:alpine

LABEL author="Chetan Singh"

WORKDIR /usr/share/nginx/html

# COPY /home/chetansingh/.docker/nginx.conf /etc/nginx/nginx.conf
COPY ./dist .

EXPOSE 80 443

ENTRYPOINT ["nginx","-g","daemon off;"]