FROM java-base

RUN mkdir -p /usr/local/hl7-auth
RUN mkdir -p /var/log/hl7-auth/

RUN wget  http://hit-2015.nist.gov/wars/hl7-auth.jar -O /usr/local/hl7-auth/hl7-auth.jar

#COPY ./hl7-auth.jar /usr/local/hl7-auth/
COPY run.sh /usr/local/bin/run-server.sh
RUN chmod a+rx /usr/local/bin/run-server.sh


ARG privateKey=./config/privateKey.txt
ARG publicKey=./config/publicKey.txt

COPY $privateKey /usr/local/privateKey.txt
COPY $publicKey /usr/local/publicKey.txt

CMD /usr/local/bin/run-server.sh
