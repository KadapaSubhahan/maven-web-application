FROM alpine/java:22-jdk

WORKDIR /app

COPY target/maven-web-application.jar /app/maven-web-application.jar

EXPOSE 8080

CMD ["java", "-jar", "/app/maven-web-application.jar"]
