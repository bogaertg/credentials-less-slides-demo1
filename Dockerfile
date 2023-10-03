#FROM eclipse-temurin:17-jre-alpine as build
#WORKDIR /workspace/app
#
#COPY target/tabs-vs-spaces-postgres-1.0-SNAPSHOT-*.jar run.jar
#
#ENTRYPOINT ["java","-jar","run.jar"]

FROM tomcat

COPY target/tabs-vs-spaces-*.war /usr/local/tomcat/webapps/