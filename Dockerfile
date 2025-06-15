# Use an official JDK runtime as a parent image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Gradle wrapper files and build files
COPY . .

# Give permission to gradlew
RUN chmod +x ./gradlew

# Build the application
RUN ./gradlew build --no-daemon

# Expose port 8080
EXPOSE 8080

# Run the Spring Boot app
CMD ["java", "-jar", "build/libs/demo-0.0.1-SNAPSHOT.jar"]
