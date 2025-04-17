
FROM ubuntu
WORKDIR /opt
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.104/bin/apache-tomcat-9.0.104.tar.gz .
RUN tar -xzvf apache-tomcat-9.0.104.tar.gz
RUN apt update && apt install openjdk-17-jdk -y
COPY target/sample.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]

