#!/bin/sh

/usr/local/flyway-4.0/flyway $* \
  -user=${MY_USERNAME} \
  -password=${MY_PASSWORD} \
  -schemas=${MY_DATABASE} \
  -target=${OPENSHIFT_BUILD_REFERENCE/v/}

