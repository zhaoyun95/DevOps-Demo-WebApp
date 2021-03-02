from tomcat:8.0.20-jre8
#RUN mkdir /usr/local/tomcat/webapps/mywebapps
COPY target/AVNCommunication-1.0.war /usr/local/tomcat/webapps/squad8.war
EXPOSE 8080
CMD [ "catalina.sh","run" ]