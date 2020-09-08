FROM sogis/qgis-server

RUN mkdir /data \
    && chown www-data:www-data /data \
    && chmod 0775 /data

ADD somap.qgs somap_print.qgs somap_wfs.qgs grundbuchplanauszug.qgs /data/
RUN chown www-data /data/somap* /data/grundbuchplanauszug.qgs
