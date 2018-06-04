#!/bin/bash

#hl7-auth
if [[ $(sudo docker ps -aqf "name=hl7-auth") ]]; then
    sudo docker rm -f $(sudo docker ps -aqf "name=hl7-auth")
fi
if [[ $(sudo docker images hl7-auth -aq) ]]; then
   sudo docker rmi -f $(sudo docker images hl7-auth -aq)
fi

#hl7-auth-db
if [[ $(sudo docker ps -aqf "name=hl7-auth-db") ]]; then
    sudo docker rm -f $(sudo docker ps -aqf "name=hl7-auth-db")
fi
if [[ $(sudo docker images hl7-auth-db -aq) ]]; then
   sudo docker rmi -f $(sudo docker images hl7-auth-db -aq)
fi

#hl7-auth-db-ui
if [[ $(sudo docker ps -aqf "name=hl7-auth-db-ui") ]]; then
    sudo docker rm -f $(sudo docker ps -aqf "name=hl7-auth-db-ui")
fi


#hl7-igamt
if [[ $(sudo docker ps -aqf "name=hl7-igamt") ]]; then
    sudo docker rm -f $(sudo docker ps -aqf "name=hl7-igamt")
fi
if [[ $(sudo docker images hl7-igamt -aq) ]]; then
   sudo docker rmi -f $(sudo docker images hl7-igamt -aq)
fi

#hl7-igamt-db
if [[ $(sudo docker ps -aqf "name=hl7-igamt-db") ]]; then
    sudo docker rm -f $(sudo docker ps -aqf "name=hl7-igamt-db")
fi
if [[ $(sudo docker images hl7-igamt-db -aq) ]]; then
   sudo docker rmi -f $(sudo docker images hl7-igamt-db -aq)
fi

#hl7-igamt-db-ui
if [[ $(sudo docker ps -aqf "name=hl7-igamt-db-ui") ]]; then
    sudo docker rm -f $(sudo docker ps -aqf "name=hl7-igamt-db-ui")
fi


#hl7-reverse-proxy
if [[ $(sudo docker ps -aqf "name=hl7-reverse-proxy") ]]; then
    sudo docker rm -f $(sudo docker ps -aqf "name=hl7-reverse-proxy")
fi
if [[ $(sudo docker images hl7-reverse-proxy -aq) ]]; then
   sudo docker rmi -f $(sudo docker images hl7-reverse-proxy -aq)
fi


if [[ $(sudo docker ps -aqf "name=dns-proxy-server") ]]; then
    sudo docker rm -f $(sudo docker ps -aqf "name=dns-proxy-server")
fi


#mongo-express
#if [[ $(sudo docker images mongo-express -aq) ]]; then
#   sudo docker rmi -f $(sudo docker images mongo-express -aq)
#fi




