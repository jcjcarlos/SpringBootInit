FROM eclipse-temurin:17.0.8.1_1-jdk-alpine
WORKDIR /app
COPY target/SpringBootInit-0.0.1-SNAPSHOT.jar app.jar
CMD ["java", "-jar", "app.jar", "--server.port=8083"]
EXPOSE 8083
