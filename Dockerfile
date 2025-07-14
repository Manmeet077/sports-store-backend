# Use OpenJDK 17 base image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy everything
COPY . .

# Package the application
RUN ./mvnw clean install -DskipTests

# Expose port (same as in Spring Boot)
EXPOSE 8080

# Run the Spring Boot app
CMD ["mvn", "spring-boot:run"]
