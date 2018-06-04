# Pull base image.
FROM mongo:3.7.9
#https://hub.docker.com/_/mongo/
COPY ./import.sh /docker-entrypoint-initdb.d/import.sh
RUN ["mkdir", "/tmp/dump/"]
COPY ./dump /tmp/dump/
