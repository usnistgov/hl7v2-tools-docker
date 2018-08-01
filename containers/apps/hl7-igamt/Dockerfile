FROM java-base

RUN mkdir -p /usr/local/hl7-igamt
RUN mkdir -p /var/log/hl7-igamt
RUN wget  http://hit-2015.nist.gov/wars/hl7-igamt.jar -O /usr/local/hl7-igamt/hl7-igamt.jar
#COPY ./hl7-igamt.jar /usr/local/hl7-igamt/
COPY run.sh /usr/local/bin/run-server.sh
RUN chmod a+rx /usr/local/bin/run-server.sh

ARG publicKey=./config/publicKey.txt
COPY $publicKey /usr/local/publicKey.txt
CMD /usr/local/bin/run-server.sh

