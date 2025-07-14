# Start from an official OpenJDK image
FROM eclipse-temurin:17-jdk

# Set the working directory
WORKDIR /app

# Copy pom.xml and source code
COPY . .

# Build the application
RUN mvn clean install -DskipTests

# Run the application
CMD ["java", "-jar", "target/sports-store-1.0.0.jar"]
