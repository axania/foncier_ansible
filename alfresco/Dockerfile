FROM alfresco/alfresco-content-repository-community:6.0.7-ga

ARG TOMCAT_DIR=/usr/local/tomcat

RUN localedef -c -f UTF-8 -i en_US en_US.UTF-8
ENV LC_ALL en_US.UTF-8

# Add configuration to alfresco-global.properties
RUN echo -e '\n\
attributes.propcleaner.cronExpression=0 0 3 ? * SAT\n\
system.thumbnail.generate=false\n\
ooo.enabled=false\n\
ftp.enabled=false\n\
cifs.enabled=false\n\
' >> $TOMCAT_DIR/shared/classes/alfresco-global.properties

# Deploy a new model for permissions
COPY custom-model-context.xml $TOMCAT_DIR/shared/classes/alfresco/extension

# Uninstall unnecessary modules
RUN java -jar $TOMCAT_DIR/alfresco-mmt/alfresco-mmt-6.0.jar uninstall org.alfresco.integrations.google.docs $TOMCAT_DIR/webapps/alfresco
RUN java -jar $TOMCAT_DIR/alfresco-mmt/alfresco-mmt-6.0.jar uninstall alfresco-aos-module $TOMCAT_DIR/webapps/alfresco
