#!/bin/bash

mongorestore --db ${MONGO_INITDB_DATABASE} /tmp/dump/
