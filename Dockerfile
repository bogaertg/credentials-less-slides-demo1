#FROM eclipse-temurin:17-jre-alpine as build
#WORKDIR /workspace/app
#
#COPY target/tabs-vs-spaces-postgres-1.0-SNAPSHOT-*.jar run.jar
#
#ENTRYPOINT ["java","-jar","run.jar"]

FROM jetty:9.4.52-jre11-eclipse-temurin
ENV DB_PORT=5432
ENV INSTANCE_HOST=""
ENV DB_NAME=my-database
ENV DB_USER=""
ENV DB_PASS=""


COPY target/tabs-vs-spaces-*.war /var/lib/jetty/webapps/root.war

EXPOSE 8080
