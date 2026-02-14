FROM tomcat:9.0-jdk21-corretto

# Optional: remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Deploy your WAR as ROOT so it is available at "/"
COPY target/maven-web-application.war /usr/local/tomcat/webapps/maven-web-application.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
