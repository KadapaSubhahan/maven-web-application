FROM alpine/java:22-jdk

WORKDIR /app

COPY target/maven-web-application.war /app/maven-web-application.war

EXPOSE 8080

CMD ["java", "-jar", "/app/maven-web-application.war"]
