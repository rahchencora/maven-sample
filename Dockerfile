# Build maven docker image

FROM maven:3.6.3-openjdk-11

WORKDIR /app/

COPY pom.xml pom.xml

COPY src src

RUN mvn package

EXPOSE 8080

# Execute default command
CMD java -jar /app/target/hello-world-0.1.0.jar