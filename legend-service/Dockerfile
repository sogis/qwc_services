FROM sourcepole/qwc-legend-service

RUN mkdir -p /srv/qwc_service/config/default /srv/qwc_service/config/legends
ADD legendConfig.json permissions.json /srv/qwc_service/config/default/
ADD *png /srv/qwc_service/config/legends/
