FROM jboss/apiman-wildfly:1.0.2.Final

RUN $JBOSS_HOME/bin/add-user.sh admin admin123! --silent

EXPOSE 8787

# Add the postgres driver and datasource
ADD files/* $JBOSS_HOME/standalone/deployments/
# Change standalone-apiman.xml for postgres
RUN  sed -i -e 's/H2Dialect/PostgreSQLDialect/g' $JBOSS_HOME/standalone/configuration/standalone-apiman.xml

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0", "-c", "standalone-apiman.xml", "--debug"]
