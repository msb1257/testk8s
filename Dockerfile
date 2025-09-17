# Use official Tomcat base image
FROM tomcat:10.1-jdk17
# Remove default ROOT app (optional, keeps container clean)
RUN rm -rf /usr/local/tomcat/webapps/*
# Copy your WAR file to webapps folder
COPY webapp.war /usr/local/tomcat/webapps/ROOT.war
# Expose Tomcat port
EXPOSE 8080
# Start Tomcat
CMD ["catalina.sh", "run"]
