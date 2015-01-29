FROM jboss/wildfly:8.2.0.Final

ENV APIMAN_QUICKSTARTS_VERSION 1.0.1.Final

RUN /opt/jboss/wildfly/bin/add-user.sh admin admin123! --silent

# Enable binding to all network interfaces and debugging inside the server
RUN echo "JAVA_OPTS=\"\$JAVA_OPTS -Djboss.bind.address=0.0.0.0 -Djboss.bind.address.management=0.0.0.0\"" >> ${JBOSS_HOME}/bin/standalone.conf

ENTRYPOINT ["/opt/jboss/wildfly/bin/standalone.sh"]
CMD []

RUN curl https://repo1.maven.org/maven2/io/apiman/apiman-quickstarts-echo-service/$APIMAN_QUICKSTARTS_VERSION/apiman-quickstarts-echo-service-$APIMAN_QUICKSTARTS_VERSION.war -o ${JBOSS_HOME}/standalone/deployments/apiman-quickstarts-echo-service.war

