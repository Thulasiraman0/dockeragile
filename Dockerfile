# Use a lightweight Java runtime
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target folder to the container
# Replace 'simple-java-app-1.0.jar' if your artifactId/version is different
COPY target/simple-java-app-1.0.jar app.jar

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]