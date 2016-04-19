#!/bin/sh

rm -rf /usr/local/flyway-4.0/sql
ln -s /var/git/jboss-greeter/src/main/resources/sql /usr/local/flyway-4.0/sql

/usr/local/flyway-4.0/flyway $* \
  -user=${MY_USERNAME} \
  -password=${MY_PASSWORD} \
  -schemas=${MY_DATABASE} \
  -target=${OPENSHIFT_BUILD_REFERENCE/v/}

