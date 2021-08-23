FROM tomcat:9
COPY test/target/*.war /usr/local/tomcat/webapps/myweb.war
