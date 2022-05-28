FROM docker.io/nginx
LABEL name="vue-front"
LABEL version="1.0"
CMD npm i
COPY  ./dist/ /usr/share/nginx/html/
COPY ./vue-front.conf /etc/nginx/conf.d/
EXPOSE 80