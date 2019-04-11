FROM jboss/base-jdk:8
VOLUME /tmp
COPY *.jar /app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
EXPOSE 8080
