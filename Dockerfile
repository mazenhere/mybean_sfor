FROM tomcat:latest
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
FROM tomcat:8.0
