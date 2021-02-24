FROM sourcepole/sogis-ccc-config

ARG CCC_SERVER_DOMAIN
RUN mkdir -p /srv/qwc_service/config/default
ADD cccConfig.json permissions.json /srv/qwc_service/config/default/
RUN sed -i "s|@CCC_SERVER_DOMAIN@|$CCC_SERVER_DOMAIN|" /srv/qwc_service/config/default/cccConfig.json
