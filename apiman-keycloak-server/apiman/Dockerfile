FROM jboss/apiman-wildfly

RUN $JBOSS_HOME/bin/add-user.sh admin admin123! --silent

EXPOSE 8787
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0", "-c", "standalone-apiman.xml", "--debug"]

# Apiman overlay with no keycloak
RUN sed -i -e 's/\/auth</http:\/\/localhost:9080\/auth</g' $JBOSS_HOME/standalone/configuration/standalone-apiman.xml
