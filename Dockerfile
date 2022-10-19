FROM tomcat:latest
COPY ./target/studentForm.war /usr/local/tomcat/webapp
EXPOSE 8080
CMD ["catalina.sh", "run"]