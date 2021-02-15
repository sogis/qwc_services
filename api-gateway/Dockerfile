# Nginx Server
#FROM twalter/openshift-nginx:mainline-alpine

FROM nginx:mainline-alpine

# support running as arbitrary user which belogs to the root group
RUN chmod g+rwx /var/cache/nginx /var/run /var/log/nginx /usr/lib/nginx/modules
# users are not allowed to listen on priviliged ports
RUN sed -i.bak 's/listen\(.*\)80;/listen 8081;/' /etc/nginx/conf.d/default.conf
EXPOSE 8081
# comment user directive as master process is run as user in OpenShift anyhow
RUN sed -i.bak 's/^user/#user/' /etc/nginx/nginx.conf

#RUN chmod g+rwx /usr/lib/nginx/modules

ADD apidoc.html /usr/share/nginx/html/
ADD maintenance.html /usr/share/nginx/html/
