FROM openjdk:11.0-jre-slim
EXPOSE 8084
ARG JAR_FILE=target/*.jar
ADD ${JAR_FILE} cloud-eureka-server.jar
ENTRYPOINT ["java","-jar","/cloud-eureka-server.jar"]