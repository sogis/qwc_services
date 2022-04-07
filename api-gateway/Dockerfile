# Nginx Server
FROM nginxinc/nginx-unprivileged:mainline

# users are not allowed to listen on priviliged ports
RUN sed -i.bak 's/listen\(.*\)80;/listen 8081;/' /etc/nginx/conf.d/default.conf
EXPOSE 8081
# comment user directive as master process is run as user in OpenShift anyhow
RUN sed -i.bak 's/^user/#user/' /etc/nginx/nginx.conf

ADD apidoc.html maintenance.html epsg.html /usr/share/nginx/html/

USER root

# Keep the nginx logs inside the container
RUN unlink /var/log/nginx/access.log \
    && touch /var/log/nginx/access.log \
    && chown 101 /var/log/nginx/*log \
    && chmod 755 /var/log/nginx/*log

USER 101
