# Nginx Server
#FROM twalter/openshift-nginx:mainline-alpine
FROM openresty/openresty:1.11.2.5-alpine

ADD nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
ADD apidoc.html /usr/share/nginx/html/
ADD maintenance.html /usr/share/nginx/html/

RUN chgrp -R 0 /usr/local/openresty/nginx/ && \
    chmod -R g=u /usr/local/openresty/nginx/
