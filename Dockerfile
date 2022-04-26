FROM openjdk:8-jdk-alpine
EXPOSE 8000
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} springboot.jar
ENTRYPOINT ["java","-jar","/springboot.jar"]