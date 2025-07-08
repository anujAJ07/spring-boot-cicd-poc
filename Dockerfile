# Use a lightweight official Java 21 runtime as a parent image
FROM openjdk:21-jdk-slim

# Set an argument for the JAR file path
ARG JAR_FILE=target/*.jar

# Copy the JAR file from the build context to the container and rename it
COPY ${JAR_FILE} app.jar

# Specify the command to run on container startup
ENTRYPOINT ["java","-jar","/app.jar"]