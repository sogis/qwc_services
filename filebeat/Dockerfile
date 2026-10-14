# Nginx Server
FROM debian:12

USER root

# Install the NGINX Amplify Agent
RUN apt-get update \
    && apt-get install -y curl
RUN curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-oss-7.15.1-amd64.deb \
    && dpkg -i filebeat-oss-7.15.1-amd64.deb \
    && filebeat modules list \
    && filebeat modules enable nginx

COPY filebeat.yml /etc/filebeat/filebeat.yml
COPY nginx.yml /etc/filebeat/modules.d/nginx.yml

RUN chgrp -R 0 /etc/filebeat /var/lib/filebeat /var/log/filebeat && \
    chmod -R g=u /etc/filebeat /var/lib/filebeat /var/log/filebeat && \
    chmod g-w /etc/filebeat/filebeat.yml

USER 101
CMD ["filebeat", "-e", "--strict.perms=false", "-E", "seccomp.enabled=false"]
