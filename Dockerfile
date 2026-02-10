# Step 1: Tomcat base image ka use karein
FROM tomcat:9.0-jdk11-openjdk-slim

# Step 2: Default webapps ko delete karein (optional but recommended)
RUN rm -rf /usr/local/tomcat/webapps/*

# Step 3: Apni .war file ko Tomcat ke webapps folder mein copy karein
# Agar aap chahte hain ki project domain ke root par chale (e.g., example.com/), 
# toh file ka naam ROOT.war hona chahiye.
COPY ./target/*.war /usr/local/tomcat/webapps/ROOT.war

# Step 4: Port expose karein
EXPOSE 8080

# Step 5: Tomcat start karein
CMD ["catalina.sh", "run"]
