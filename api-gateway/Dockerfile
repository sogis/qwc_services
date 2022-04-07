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
RUN curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-oss-7.15.1-amd64.deb \
    && dpkg -i filebeat-oss-7.15.1-amd64.deb \
    && filebeat modules list \
    && filebeat modules enable nginx

ADD filebeat.yml /etc/filebeat/filebeat.yml

#RUN chown -R 101 /etc/filebeat /var/lib/filebeat /var/log/filebeat
RUN chgrp -R 0 /etc/filebeat /var/lib/filebeat /var/log/filebeat && \
    chmod -R g=u /etc/filebeat /var/lib/filebeat /var/log/filebeat

COPY ./entrypoint.sh /entrypoint.sh
#ENTRYPOINT ["/entrypoint.sh"]
