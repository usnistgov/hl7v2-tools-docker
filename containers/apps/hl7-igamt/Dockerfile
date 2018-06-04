FROM java-base

RUN mkdir -p /usr/local/hl7-igamt
RUN mkdir -p /var/log/hl7-igamt
COPY ./hl7-igamt.jar /usr/local/hl7-igamt/
COPY run.sh /usr/local/bin/run-server.sh
RUN chmod a+rx /usr/local/bin/run-server.sh

ARG publicKey=./config/publicKey.txt
COPY $publicKey /usr/local/publicKey.txt
CMD /usr/local/bin/run-server.sh

