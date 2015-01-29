FROM jboss/apiman-wildfly

RUN $JBOSS_HOME/bin/add-user.sh admin admin123! --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0", "-c", "standalone-apiman.xml", "-Djboss.socket.binding.port-offset=1000"]

# Apiman keycloak overlay
RUN cd $JBOSS_HOME \
    && curl https://raw.githubusercontent.com/apiman/apiman/master/distro/data/src/main/resources/data/apiman-realm.json -o apiman-realm.json \
    && echo 'JAVA_OPTS="$JAVA_OPTS -Dkeycloak.import=$JBOSS_HOME/apiman-realm.json"' >> /opt/jboss/wildfly/bin/standalone.conf \
    && sed -i -e 's/\/apiman/http:\/\/localhost:8080\/apiman/g' $JBOSS_HOME/apiman-realm.json \
    && rm -rf $JBOSS_HOME/standalone/data

