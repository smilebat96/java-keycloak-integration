FROM adoptopenjdk/openjdk11:alpine-jre
VOLUME /tmp
COPY target/*.jar ./
ENTRYPOINT ["java","-jar","/app.jar"]