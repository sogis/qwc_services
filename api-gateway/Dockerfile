# Nginx Server
FROM nginxinc/nginx-unprivileged:mainline-alpine

# users are not allowed to listen on priviliged ports
RUN sed -i.bak 's/listen\(.*\)80;/listen 8081;/' /etc/nginx/conf.d/default.conf
EXPOSE 8081
# comment user directive as master process is run as user in OpenShift anyhow
RUN sed -i.bak 's/^user/#user/' /etc/nginx/nginx.conf

ADD apidoc.html /usr/share/nginx/html/
ADD maintenance.html /usr/share/nginx/html/
