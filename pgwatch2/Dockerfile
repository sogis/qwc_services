FROM cybertec/pgwatch2-nonroot:1.9.0

USER root
RUN chmod -R g+w /etc/postgresql/9.5/main/pg_hba.conf /etc/postgresql/9.5/main/pgwatch_postgresql.conf

USER 10001
