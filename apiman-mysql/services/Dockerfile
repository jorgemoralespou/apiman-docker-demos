FROM jboss/wildfly

RUN /opt/jboss/wildfly/bin/add-user.sh admin admin123! --silent

#
# Enable port for debugging with --debug
EXPOSE 8787

# Enable binding to all network interfaces and debugging inside the server
RUN echo "JAVA_OPTS=\"\$JAVA_OPTS -Djboss.bind.address=0.0.0.0 -Djboss.bind.address.management=0.0.0.0\"" >> ${JBOSS_HOME}/bin/standalone.conf

ENTRYPOINT ["/opt/jboss/wildfly/bin/standalone.sh"]
CMD []

RUN curl https://repo1.maven.org/maven2/io/apiman/apiman-quickstarts-echo-service/1.0.1.Final/apiman-quickstarts-echo-service-1.0.1.Final.war -o ${JBOSS_HOME}/standalone/deployments/apiman-quickstarts-echo-service.war

