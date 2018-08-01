#
# Java Base Image -- a base container for HIT Java applications
#
FROM openjdk:8-jdk-alpine
RUN  apk update && apk upgrade && apk add netcat-openbsd bash curl shadow ca-certificates && update-ca-certificates

# Create the oarop user that runtime systems should run on by default.
# This user's UID must be set to 1000 to ensure alignment with the oarop
# user on the host system.
#
RUN sed --in-place -e '/CREATE_MAIL_SPOOL/ s/=yes/=no/' /etc/default/useradd
ARG opuser=hituser
ARG opuid=1000
RUN groupadd --gid $opuid $opuser && \
    useradd -m --comment "HIT Operations" --shell /bin/bash \
            --gid $opuid --uid $opuid $opuser

CMD ["bash"]
