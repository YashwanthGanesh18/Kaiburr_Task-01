# Use Eclipse Temurin JDK 21 as the base image
FROM eclipse-temurin:21-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/task-management.jar app.jar

# Expose the port the app runs on
EXPOSE 8080

# Define the entry point command to run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
