FROM tomcat:latest

# Supprime les applications par défaut de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copie le fichier WAR généré dans le dossier webapps de Tomcat
COPY target/TP_A18_ci_cd_SOUMATIA-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/TP_A18_ci_cd_SOUMATIA-1.0-SNAPSHOT.war

# Expose le port 8080
EXPOSE 8080

# Démarre Tomcat
CMD ["catalina.sh", "run"]
