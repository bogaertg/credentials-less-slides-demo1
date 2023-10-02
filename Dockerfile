#FROM eclipse-temurin:17-jre-alpine as build
#WORKDIR /workspace/app
#
#COPY target/tabs-vs-spaces-postgres-1.0-SNAPSHOT-*.jar run.jar
#
#ENTRYPOINT ["java","-jar","run.jar"]

FROM tomcat

ENV DB_PORT=5432
ENV INSTANCE_HOST=34.32.196.107
ENV DB_NAME=my-database
ENV DB_USER=postgres
ENV DB_PASS=password

COPY target/tabs-vs-spaces-*.war /usr/local/tomcat/webapps/