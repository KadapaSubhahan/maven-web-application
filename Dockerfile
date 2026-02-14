FROM openjdk:17-jdk-slim   # better base for Java than raw ubuntu

WORKDIR /app

COPY target/maven-web-application.war /app/maven-web-application.war

EXPOSE 8080                # optional but good documentation

CMD ["java", "-jar", "/app/maven-web-application.war"]
