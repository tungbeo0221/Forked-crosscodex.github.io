# Stage 1: Build stage
FROM gradle as builder

# Set the working directory in the container
WORKDIR /app

# Copy the application source code
COPY . .

# Build the Spring Boot application
RUN gradle clean build -x test

# Stage 2: Final stage
FROM eclipse-temurin

# Set the working directory in the container
WORKDIR /app

# Copy the built artifact from the builder stage to the final stage
COPY --from=builder /app/build/libs/devhub.jar ./app.jar

# Expose the port that the Spring Boot application will run on
EXPOSE 8080

# Command to run the Spring Boot application when the container starts
CMD ["java", "-jar", "app.jar"]
