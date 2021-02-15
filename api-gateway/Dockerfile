# Nginx Server
FROM twalter/openshift-nginx:mainline-alpine

RUN chmod g+rwx /usr/lib/nginx/modules
ADD apidoc.html /usr/share/nginx/html/
ADD maintenance.html /usr/share/nginx/html/
