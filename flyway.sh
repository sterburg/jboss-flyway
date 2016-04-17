#!/bin/sh

/usr/local/flyway-4.0/flyway $1 \
  -user=${ORACLE_USERNAME} \
  -password=${ORACLE_PASSWORD} \
  -schema=${ORACLE_DATABASE} \
  -locations=/var/git/src/main/resources/sql \
  -target=${OPENSHIFT_BUILD_COMMIT}

