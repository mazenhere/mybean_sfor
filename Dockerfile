FROM centos:7
RUN   yum install java-openjdk -y  
RUN   curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.78/bin/apache-tomcat-9.0.78.tar.gz
RUN   tar -xvzf apache-tomcat-9.0.78.tar.gz -C /opt/
RUN   mv /opt/apache-tomcat* /opt/apache-tomcat
COPY  student.war /opt/apache-tomcat/webapps/
EXPOSE 8079
CMD  [ "/opt/apache-tomcat/bin/catalina.sh", "run" ]
