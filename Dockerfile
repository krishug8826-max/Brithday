# Tomcat base image
FROM tomcat:9.0-jdk11-openjdk-slim

# Purane default files hatao
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Sabhi files (jsp, html, images, mp3) ko ROOT folder mein copy karo
# Taki aapka project direct domain par khule
COPY . /usr/local/tomcat/webapps/ROOT/

# Port expose
EXPOSE 8080

CMD ["catalina.sh", "run"]
