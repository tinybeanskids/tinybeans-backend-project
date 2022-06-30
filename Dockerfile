FROM openjdk:11.0.15

WORKDIR /app

# web server port
EXPOSE 8080

COPY . .

RUN chmod -R +x gradlew

# entrypoint
CMD ["./gradlew", "--project-cache-dir", "/tmp/gradle-cache", "bootRun"]
