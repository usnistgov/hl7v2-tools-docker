#!/bin/sh

echo "********************************************************"
echo "Starting HL7 AUTH  "
echo "********************************************************"


java -Xmx900m \
     -Xss256k \
     -Djava.security.egd=file:/dev/./urandom  \
     -Ddb.name=${MONGO_INITDB_DATABASE}  \
     -Ddb.host=hl7-auth-db \
     -Ddb.port=27017 \
     -Dkey.public=/usr/local/publicKey.txt \
     -Dkey.private=/usr/local/privateKey.txt \
     -jar /usr/local/hl7-auth/hl7-auth.jar