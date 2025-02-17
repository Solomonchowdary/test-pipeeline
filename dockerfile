# Use an OpenJDK base image
FROM openjdk:17-jdk-alpine

# Set application JAR file
ARG JAR_FILE=target/*.jar

# Copy JAR file into container
COPY ${JAR_FILE} app.jar

# Set the entry point to run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]

# Expose application port (change 8080 if your app runs on a different port)
EXPOSE 8080
