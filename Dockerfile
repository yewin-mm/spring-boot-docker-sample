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


## 
#------------------------------------------------------------------
### Below is to automatic generate jar file with docker, so that you don't need to generate jar file, you just need docker build and docker run commands.
### But In this project, I will do manual generate jar file with `mvn clean package`
#------------------------------------------------------------------

# there are two ways to generate jar file by using maven.
# 1. using maven image,
# 2. copying .mvn folder

## is comment out for definition
# is code that you can uncomment and can test it without manual typing `mvn clean package` in your CMD or terminal

##1.
## pull maven image from DockerHub to run mvn command and give that name as builder to use in next step, you can give any name you want (here, I used multi-stage build which is better way using docker)
#FROM maven:3.8.7-eclipse-temurin-11-alpine as builder
## create folder (if not existed) and define working folder inside container
#WORKDIR /opt/app
## copy our project into that directory
#COPY . /opt/app
## generate jar file by using maven which we already add maven image in above, (you can use `mvn clean install -DskipTests`) (this step will take a few minutes)
#RUN mvn clean package -DskipTests

## you can find more about maven image tag versions in here, https://github.com/docker-library/docs/tree/master/maven

##2.
## pull jdk for java which to run maven command and give that name as builder to use in next step, you can give any name you want (here, I used multi-stage build which is better way using docker)
#FROM eclipse-temurin:11-jdk-alpine as builder
## create folder (if not existed) and define working folder inside container
#WORKDIR /opt/app
## copy .mvn folder into that directory
#COPY .mvn/ .mvn
## copy pom.xml file into that directory
#COPY mvnw pom.xml ./
## run to generate dependencies and copy offline downloaded dependencies into that directory (this step will take a few minutes)
#RUN ./mvnw dependency:go-offline
## copy src folder into that directory
#COPY ./src ./src
## generate jar file by using .mvnw (you can use `./mvnw clean install -DskipTests`) (as this way, we don't need to download (maven image) like above #1 way because we copied .mvn folder in above) (this step will take a few minutes)
#RUN ./mvnw clean package -DskipTests

#FROM openjdk:8-jdk-alpine (old way)
## use eclipse temurin instead of above openJDK for better performance and small size
## eclipse temurin can provide java as well
## use JRE instead of JDK for small size and JRE is enough to run jar.
## FROM eclipse-temurin:11-jre-alpine
## below is for java 8
#FROM eclipse-temurin:8-jre-alpine
## you can find more about temurin tag versions in here, https://github.com/docker-library/docs/blob/master/eclipse-temurin/README.md#supported-tags-and-respective-dockerfile-links
## alpine image tag is a light weight image than other image tags

## set working directory
# WORKDIR /opt/app

## below copy command is use when you genereate jar file with maven in docker container.
## from `builder` is from above step which we gave the name to `builder`
## opt/app is the path where we generate jar file in above step
## you can define static jar file name without snapshot version with `<finalName>` tag inside `<build>` tag in `pom.xml` file.
# COPY --from=builder /opt/app/target/spring-boot-docker-sample-0.0.1-SNAPSHOT.jar  app.jar

# ENTRYPOINT ["java","-jar","app.jar"]
