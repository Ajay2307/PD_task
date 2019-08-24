FROM jboss/wildfly

USER root

RUN yum install maven -y

COPY . /opt/

WORKDIR /opt/

RUN mvn clean package 

EXPOSE 8080

RUN cp /opt/target/openshift-tasks.war /opt/jboss/wildfly/standalone/deployments/prodevans.war

