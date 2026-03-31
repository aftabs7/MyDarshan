# Use OpenJDK 17 base image (Alpine for small size)
FROM openjdk:17-jdk-alpine

# Set working directory inside container
WORKDIR /app

# Copy the built jar file into the container
COPY target/*.jar app.jar

# Expose port 8080 (or your configured port)
EXPOSE 8080

# Run the jar file
CMD ["java", "-jar", "app.jar"]
