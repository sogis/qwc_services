# Nginx Server
FROM nginxinc/nginx-unprivileged:mainline

# users are not allowed to listen on priviliged ports
RUN sed -i.bak 's/listen\(.*\)80;/listen 8081;/' /etc/nginx/conf.d/default.conf
EXPOSE 8081
# comment user directive as master process is run as user in OpenShift anyhow
RUN sed -i.bak 's/^user/#user/' /etc/nginx/nginx.conf

ADD apidoc.html maintenance.html epsg.html /usr/share/nginx/html/
ADD icons/* /usr/share/nginx/html/

USER root

# Keep the nginx logs inside the container
RUN unlink /var/log/nginx/access.log  \
    && unlink /var/log/nginx/error.log \
    && touch /var/log/nginx/access.log \
    && touch /var/log/nginx/error.log \
    && chown 101 /var/log/nginx/*log \
    && chmod 755 /var/log/nginx/*log \
    && mkdir /var/log/nginx-soft \
    && ln -sf /dev/stdout /var/log/nginx-soft/access.log \
    && ln -sf /dev/stderr /var/log/nginx-soft/error.log

USER 101
