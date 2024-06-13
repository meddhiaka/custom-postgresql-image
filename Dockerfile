FROM postgres:alpine3.20

WORKDIR /db_home

ENV POSTGRES_USER=${POSTGRES_USER}
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}
ENV POSTGRES_DB=${POSTGRES_DB}

# <host_port>:<container_port> ; but only the container port here is specified
EXPOSE 991

CMD [ "postgres" ]

# docker URI template:
#   psql postgresql://username:password@server:port/database_name
