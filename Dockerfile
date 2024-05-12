# Etapa de construcción Maven
FROM maven:latest AS build
WORKDIR /usr/src/app
COPY . .
RUN mvn clean package

# Etapa de producción
FROM openjdk:latest
WORKDIR /usr/app
COPY --from=build /usr/src/app/target/movies-0.0.1-SNAPSHOT.jar /usr/app/maven-wrapper.jar
EXPOSE 8080
CMD ["java", "-jar", "maven-wrapper.jar"]
