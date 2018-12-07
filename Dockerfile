FROM tomcat:9-jre8-alpine

RUN apk --update add curl ca-certificates



#WORKDIR /usr/local/tomcat

#COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
#COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
ADD ./target/javabuild.war /usr/local/tomcat/webapps/javabuild.war
EXPOSE 8080
CMD ["catalina.sh", "run"]







