FROM adoptopenjdk/openjdk11:alpine-jre
VOLUME /tmp
COPY target/*.jar keycloak-client.jar
ENTRYPOINT ["java","-jar","keycloak-client.jar"]