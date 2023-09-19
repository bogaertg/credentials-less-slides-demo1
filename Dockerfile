FROM eclipse-temurin:17-jre-alpine as build
WORKDIR /workspace/app

COPY target/spring-cloud-gcp-storage-*.jar.jar run.jar

ENTRYPOINT ["java","-jar","run.jar"]