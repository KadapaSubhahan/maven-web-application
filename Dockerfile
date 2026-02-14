FROM openjdk:17-jdk-slim

WORKDIR /app

COPY target/maven-web-application.war /app/maven-web-application.war

EXPOSE 8080

CMD ["java", "-jar", "/app/maven-web-application.war"]
