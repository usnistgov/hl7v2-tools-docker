# Pull base image.
FROM mongo:3.7.9
#https://hub.docker.com/_/mongo/

RUN apt-get update \
    && apt-get install -y curl unzip vim wget \
	&& apt-get install -y --no-install-recommends \
		ca-certificates \
		jq \
		numactl \
	&& rm -rf /var/lib/apt/lists/*

COPY ./import.sh /docker-entrypoint-initdb.d/import.sh
RUN ["mkdir", "/tmp/dump/"]
#COPY ./dump /tmp/dump/
RUN wget --no-check-certificate https://hit-2015.nist.gov/wars/hl7-auth-db.zip -O ./dump.zip
RUN unzip ./dump.zip -d /tmp/dump/


#RUN ["chmod", "+x", "/tmp/create.sh"]
#RUN ["/tmp/create.sh"]


