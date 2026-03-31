# Use a maintained OpenJDK 17 image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy the JAR
COPY target/*.jar app.jar

# Expose port
EXPOSE 8080

# Run the app
CMD ["java", "-jar", "app.jar"]
