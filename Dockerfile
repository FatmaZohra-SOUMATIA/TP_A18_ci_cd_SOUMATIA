FROM tomcat:latest
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/TP_A18_ci_cd_SOUMATIA-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/TP_A18_ci_cd_SOUMATIA.0-SNAPSHOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]