FROM openjdk:17

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} configserver.jar

ENTRYPOINT ["java","-jar","/configserver.jar"]

EXPOSE 9292



# docker build -t 5f7/serviceregistry:0.0.1 .

# docker run -d -p8761:8761 --name serviceregistry 22f158f11a12