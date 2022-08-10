
FROM maven:3.8-jdk-11
RUN mkdir /project
COPY . /project
WORKDIR /project
RUN mvn clean package -DskipTests
EXPOSE 8080
CMD ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]
