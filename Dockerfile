FROM eclipse-temurin:17.0.8.1_1-jdk-alpine
WORKDIR /app
COPY . .
RUN apk add maven
RUN mvn package
CMD ["java", "-jar", "target/SpringBootInit-0.0.1-SNAPSHOT.jar app.jar", "--server.port=8083"]
EXPOSE 8083