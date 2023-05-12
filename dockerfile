FROM maven:3.8.4-openjdk-17-slim
RUN apt-get update
WORKDIR /eureka
COPY src src
COPY pom.xml .
RUN mvn clean install
ENTRYPOINT [ "mvn", "spring-boot:run" ]