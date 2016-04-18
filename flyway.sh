#!/bin/sh

/usr/local/flyway-4.0/flyway $1 \
  -user=${MY_USERNAME} \
  -password=${MY_PASSWORD} \
  -schema=${MY_DATABASE} \
  -locations=/var/git/src/main/resources/sql \
  -target=${OPENSHIFT_BUILD_REFERENCE/v/}

