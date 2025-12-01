# Use Java 17 runtime
FROM eclipse-temurin:17-jre

# Work inside /app folder
WORKDIR /app

# Copy the built jar from Maven target folder
COPY target/*.jar app.jar

# Expose port 8080 (Spring Boot default)
EXPOSE 8080

# Run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
