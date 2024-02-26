FROM openjdk:11-jre-slim
WORKDIR /Users/ansargsyan/Documents/projects/Project for Docker
COPY target/your-app.jar .
COPY src/main/resources/application.properties ./src/main/resources/
EXPOSE 8080

ENV DB_URL=jdbc:postgresql://postgres:5432/PostgreSQL16
ENV DB_USERNAME=postgres
ENV DB_PASSWORD=123321qweewq
CMD ["sh", "-c", "while ! nc -z postgres 5432; do sleep 1; done && java -jar maven-wrapper.jar"]



