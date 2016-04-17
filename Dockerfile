FROM 172.30.150.84:5000/jboss/golden:latest

USER 0
RUN curl https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/4.0/flyway-commandline-4.0-linux-x64.tar.gz |tar -C/usr/local -zx
RUN ln -s /usr/local/flyway-4.0/flyway /usr/local/bin/flyway
COPY flyway.conf /usr/local/flyway-4.0/conf/flyway.conf
USER 185

LABEL com.redhat.deployments-dir="/opt/eap/standalone/deployments" \
      com.redhat.dev-mode="DEBUG:true" \
      com.redhat.dev-mode.port="DEBUG_PORT:8787" \
      io.k8s.description="Platform for building and running JavaEE applications on JBoss EAP 6.4" \
      io.k8s.display-name="JBoss EAP 6.4 + Oracle JDBC Driver + Flyway" \
      io.openshift.expose-services="8080:http" \
      io.openshift.s2i.scripts-url="image:///usr/local/s2i" \
      io.openshift.tags="builder,javaee,eap,eap6" \
      org.jboss.deployments-dir="/opt/eap/standalone/deployments"

