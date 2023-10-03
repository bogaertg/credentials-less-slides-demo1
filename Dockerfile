#FROM eclipse-temurin:17-jre-alpine as build
#WORKDIR /workspace/app
#
#COPY target/tabs-vs-spaces-postgres-1.0-SNAPSHOT-*.jar run.jar
#
#ENTRYPOINT ["java","-jar","run.jar"]

FROM jetty:9.4.52-jre11-eclipse-temurin
ENV DB_PORT=5432
ENV INSTANCE_HOST=34.91.74.7
ENV DB_NAME=my-database
ENV DB_USER=postgres
ENV DB_PASS=password

COPY target/tabs-vs-spaces-*.war /var/lib/jetty/webapps/root.war

EXPOSE 8080
