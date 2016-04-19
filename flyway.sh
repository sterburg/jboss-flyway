#!/bin/sh -x

echo "Copying sql files to Flyway:"
ls -l /var/git/
ls /var/git/jboss-greeter/src/main/resources/sql/*.sql

cp -va /var/git/jboss-greeter/src/main/resources/sql/*.sql /usr/local/flyway-4.0/sql/
cd /usr/local/flyway-4.0/sql

/usr/local/flyway-4.0/flyway $* \
  -user=${MY_USERNAME} \
  -password=${MY_PASSWORD} \
  -schemas=${MY_DATABASE} \
  -target=${OPENSHIFT_BUILD_REFERENCE/v/}

