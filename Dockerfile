## For Java 8
FROM openjdk:8-jdk-alpine
## For Java 11
#FROM adoptopenjdk/openjdk11:alpine-jre

## change application directory inside docker, cd /opt/app
## you can comment below WORKDIR
WORKDIR /opt/app

## copy jar file under target folder into docker contrainer /opt/app/ folder (cause WORKDIR keyword and that folder is inside docker contrainer)
## and rename that jar file into app.jar
## if we don't add WORKDIR keyword like above, it will copy under home default directory
## Please make sure `spring-boot-docker-sample-0.0.1-SNAPSHOT.jar` is under target folder, if not so, you need to rename that jar file or rename in below.
COPY target/spring-boot-docker-sample-0.0.1-SNAPSHOT.jar  app.jar

## you can do copy by using Argument variable like below instead of above line
## find all file with extension jar
#ARG JAR_FILE=target/*.jar
## you can either use above line or you can using below line
## find jar with exactly name
#ARG JAR_FILE=target/spring-boot-docker-sample-0.0.1-SNAPSHOT.jar

## copy jar file which alrady set variable with aboove ARG keyword and put into opt folder (cause WORKDIR keyword) and rename jar into app.jar.
#COPY ${JAR_FILE}  app.jar

## you can use ADD keyword instead of COPY keyword
#ADD target/spring-boot-docker-sample-0.0.1-SNAPSHOT.jar app.jar

## we can also export port with below command
#EXPOSE 9090

## run java application with java -jar /opt/app/app.jar (/opt/app because of WORKDIR keyword but we don't need to add that path in ENTRYPOINT as docker already know that place cause of WORKDIR keyword)
ENTRYPOINT ["java","-jar","app.jar"]

## we can use CMD keyword to run application instead of ENTRYPOINT keyword
