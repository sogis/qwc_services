# Nginx Server
FROM nginxinc/nginx-unprivileged:mainline

# users are not allowed to listen on priviliged ports
RUN sed -i.bak 's/listen\(.*\)80;/listen 8081;/' /etc/nginx/conf.d/default.conf
EXPOSE 8081
# comment user directive as master process is run as user in OpenShift anyhow
RUN sed -i.bak 's/^user/#user/' /etc/nginx/nginx.conf

ADD apidoc.html maintenance.html epsg.html /usr/share/nginx/html/

USER root

# Install the NGINX Amplify Agent
RUN apt-get update \
    && apt-get install -qqy curl python apt-transport-https apt-utils gnupg1 procps \
    && echo 'deb https://packages.amplify.nginx.com/debian/ stretch amplify-agent' > /etc/apt/sources.list.d/nginx-amplify.list \
    && curl -fs https://nginx.org/keys/nginx_signing.key | apt-key add - > /dev/null 2>&1 \
    && apt-get update \
    && apt-get install -qqy nginx-amplify-agent \
    && apt-get purge -qqy curl apt-transport-https apt-utils gnupg1 \
    && rm -rf /etc/apt/sources.list.d/nginx-amplify.list \
    && rm -rf /var/lib/apt/lists/*

# Keep the nginx logs inside the container
RUN unlink /var/log/nginx/access.log \
    && unlink /var/log/nginx/error.log \
    && touch /var/log/nginx/access.log \
    && touch /var/log/nginx/error.log \
    && chown 1000820001 /var/log/nginx/*log \
    && chmod 644 /var/log/nginx/*log \
    && chown -R 1000820001 /etc/amplify-agent \
    && chmod -R 644 /etc/amplify-agent

# Copy nginx stub_status config
COPY ./conf.d/stub_status.conf /etc/nginx/conf.d

COPY ./entrypoint.sh /entrypoint.sh

USER 1000820001

ENTRYPOINT ["/entrypoint.sh"]
