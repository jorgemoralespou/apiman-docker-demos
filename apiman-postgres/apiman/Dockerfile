FROM apiman/on-wildfly8

RUN $JBOSS_HOME/bin/add-user.sh admin admin123! --silent

EXPOSE 8787

# Add the mysql driver and datasource
ADD files/* $JBOSS_HOME/standalone/deployments/


CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0", "-c", "standalone-apiman.xml", "--debug"]
