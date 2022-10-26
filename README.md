# spring-boot-docker-sample
<!-- PROJECT SHIELDS -->

<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/yewin-mm/spring-boot-docker-sample.svg?style=for-the-badge
[contributors-url]: https://github.com/yewin-mm/spring-boot-docker-sample/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/yewin-mm/spring-boot-docker-sample.svg?style=for-the-badge
[forks-url]: https://github.com/yewin-mm/spring-boot-docker-sample/network/members
[stars-shield]: https://img.shields.io/github/stars/yewin-mm/spring-boot-docker-sample.svg?style=for-the-badge
[stars-url]: https://github.com/yewin-mm/spring-boot-docker-sample/stargazers
[issues-shield]: https://img.shields.io/github/issues/yewin-mm/spring-boot-docker-sample.svg?style=for-the-badge
[issues-url]: https://github.com/yewin-mm/spring-boot-docker-sample/issues
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/ye-win-1a33a292/
[product-screenshot]: images/screenshot.png


<h1 align="center">
  Overview
  <img src="https://github.com/yewin-mm/spring-boot-docker-sample/blob/master/github/template/images/overview/spring_boot_docker_sample.png" /><br/>
</h1>
<h1 align="center">
  Without Docker (VM) (photo from google)
  <img src="https://github.com/yewin-mm/spring-boot-docker-sample/blob/master/github/template/images/overview/vm.webp" /><br/>
</h1>
<h1 align="center">
  With Docker (Container) (photo from google)
  <img src="https://github.com/yewin-mm/spring-boot-docker-sample/blob/master/github/template/images/overview/dockerized_app.webp" /><br/>
</h1>
<h1 align="center">
  Container vs VM (photo from Docker Official Website)
  <img src="https://github.com/yewin-mm/spring-boot-docker-sample/blob/master/github/template/images/overview/container_vs_vm.png" /><br/>
</h1>


# spring-boot-docker-sample
* This is the sample project for changing depend on environment by using Spring profile active.

<!-- TABLE OF CONTENTS -->
## Table of Contents
- [About The Project](#about-the-project)
    - [Built With](#built-with)
- [Getting Started](#getting-started)
    - [Before you begin](#before-you-begin)
    - [Clone Project](#clone-project)
    - [Prerequisites](#prerequisites)
    - [Instruction](#instruction)
- [Contact Me](#contact)
- [Contributing](#Contributing)


<a name="about-the-project"></a>
## ⚡️About The Project
This is Demo Project for Spring boot with docker. <br>
As of now, running application as container way is the best option to manage application deployment. (you can find more about benefits of using docker in google). <br>
You can learn how to add configuration in Dockerfile to get dockerized application. <br>
I've dropped some docker commands to run application in below [Instruction](#instruction) section. <br>
For more about docker and docker commands, you can learn more about in google.


<a name="built-with"></a>
### 🪓 Built With
This project is built with
* [Java](https://www.oracle.com/au/java/technologies/javase/javase-jdk8-downloads.html)
* [Maven](https://maven.apache.org/download.cgi)
* [Docker](https://www.docker.com/products/docker-desktop/)


<a name="getting-started"></a>
## 🔥 Getting Started
This project purpose is to run java application as `docker container` and so, if you want to run your application as container, <br>
you need to install `Docker` in your machine. [Get Docker] (https://www.docker.com/products/docker-desktop/) <br>
If you are using window, you need to enable Hyper-V in your laptop. <br>
If you got installation error, you can find more about install Docker in here, [Install docker on Window] (https://docs.docker.com/desktop/install/windows-install/) <br>

So, please make sure all are installed in your machine.


<a name="before-you-begin"></a>
### 🔔 Before you begin
If you are new in Git, Github and new in Spring Boot configuration structure, <br>
You should see basic detail instructions first in here [Spring Boot Application Instruction](https://github.com/yewin-mm/spring-boot-app-instruction)<br>
If you are not good enough in basic API knowledge with Java Spring Boot and other spring basic knowledge, you should learn below example projects first. <br>
Click below links.
* [Spring Boot Sample CRUD Application](https://github.com/yewin-mm/spring-boot-sample-crud) (for sample CRUD application)
* [Reading Values from Properties files](https://github.com/yewin-mm/reading-properties-file-values) (for reading values from properties files)
* [Some Docker Basic commands](https://www.edureka.co/blog/docker-commands/) (for reading values from properties files)



<a name="clone-project"></a>
### 🥡 Clone Project
* Clone the repo
   ```sh
   git clone https://github.com/yewin-mm/spring-boot-docker-sample.git


<a name="prerequisites"></a>
### 🔑 Prerequisites
Prerequisites can be found in here [Spring Boot Application Instruction](https://github.com/yewin-mm/spring-boot-app-instruction). <br>
You need to install `Docker` in your machine. [Get Docker] (https://www.docker.com/products/docker-desktop/)


<a name="instruction"></a>
### 📝 Instruction
* (Without Using Docker) If you don't want to use docker and just for testing application, you can directly run the project in your IDE. <br>
* (Without Docker), Open Docker Desktop in your machine. (Start docker). <br>
* First of all, you can check Dockerfile which under project folder.
* You can't run your application as container without that Dockerfile. 
* Go to your application folder with command prompt CMD (for window) or Terminal (for Mac and Linux) or you can open your IDE Terminal while you opening the project with your IDE. <br>
* Below commands need to type in your `CMD` or `Terminal` where path should be in your application folder.
* Generate jar file 
  * Type -> `mvn clean package` or you can type `mvn clean package -DskipTests=true` for skipping test for unnecessary compile time error.
  * You can also type `mvn clean install` or `mvn clean install -DskipTests=true` for skipping compile time error.
* Check docker version to make sure your installed docker is up or down by typing `docker --version`, 
* if you can't see docker version by above command, you need to open docker (docker desktop) or something wrong with your installation process for docker. Check more about docker installation error in google.
* Create docker image
  * Type
    ```sh
    docker build -t spring-boot-docker-sample .

  * In there, you can define your application image name as you want instead of spring-boot-docker-sample.
  * In there, you need to add dot `(.)` at the end of build command by spacing.
  * In there, you can add tag version after application name like below, if you don't set tag version, the application will go with tag version: latest as default.
  * with tag version -> `docker build -t spring-boot-docker-sample:1.0 .`

  * You can check your created docker images with below command.
  * ```sh
    docker images

  * Here, you can see Repository (image name), Tag (version), Image Id, Created date, etc.

* Run docker images as container
  * Type
    ```sh
    docker run -d -p 8080:8080 spring-boot-docker-demo
    
  * In there, -d is detached mode and if we put -d in docker, application logs will be hidden and run in background.
  * -p is port which we need to add and bind with tcp port.
  * in -p 8080:8080,
    * the last 8080 is the port which run inside docker, and it's need to same with the port which we added in application.properties file.
    * the first 8080 is the port which can call from outside and bind with inside running port 8080.
    * So, you can change the first port it to other ports like -p 9090:8080, and if so, you need to call the api of application by using 9090 port.
  * the last word is your image name and if you set tag version when you create image, <br>
  you need to add that version in run command like `docker run -d -p 8080:8080 spring-boot-docker-demo:1.0`

* After that, you can test application is running well or not by calling api which I added in this demo-application. <br> 
 Call `http://localhost:8080/spring-boot-docker-sample/getHello` via Browser or Postman.

* Check container
  * Type (check running containers)
      ```sh
      docker ps
    
  * Here, you can see Container Id, Image name, etc.

  * Type (check all containers including running container, not running container, unsuccessful running contrainer)
    ```sh
    docker ps -a

* If your application is not running well when application started up, you can check logs by removing -d to appear log in CMD or Terminal like below. <br>
 run without detached mode `docker run -p 8080:8080 spring-boot-docker-demo` <br>
 you can stop (terminate) application by pressing Ctrl+C when you run application without detached mode. <br>

* If you run application with detached mode and if you want to stop application, you can stop container.
* Please note that If you don't stop container, your application will run background the whole time.
  * Type
    ```sh
    docker stop {container_id}
  * here, you can get your application container id by typing `docker ps`. (If your container is already stopped, you cannot see that by `docker ps` and you need to find stopped containers with `docker ps -a`).
  * copy your container id and put it instead {} brackets variable. eg. `docker stop 12077ee7d46f`

* If you want to start the application next time, you can start application easily with below command.
* Please note that, you don't need to create `image` again if you want to re-start application which is stopped.
* That is the one of the good approach using container for running application. All you need is just `start` and `stop` to run, stop your application.
  * Type
    ```sh
    docker start {container_id}
  * here, you can get your stopped application container id by typing `docker ps -a`.
  * here, `-a` flag is because if you stopped container, you cannot see that container id by typing `docker ps`. That's why need to put `-a` to get stopped container id.


* If you want to delete your application container, you need to stop container first with above step.
* Please note that, it's better deleting unnecessary container or unsuccessful container as to reduce resource usage in your machine.
  * Type (if application is running, you need to stop with `docker stop` command first)
      ```sh
      docker rm {container_id}
  * here, you can get your application container id by typing `docker ps -a`. 
  * here, `-a` flag is because if you stop container, you cannot see that container id by typing `docker ps`. That's why need to put `-a` to get stopped container id.

* If you want to delete your application image, you need to stop and delete container first with above step.
  * Type (if container is still alive, you need to delete container first before deleting image)
    ```sh
    docker rmi {image_id}
  * here, you can get your application image id by typing `docker images`.

* If you get exception error for successful running application, or if you want to check your application inside container, <br>
 you can either go inside into container and see logs, folder, etc. Every application has own containers.
* To go inside your application container
  * Type
      ```sh
      docker exec -it {container_id} /bin/sh
  * here, you can get your application container id by typing `docker ps`. If container is not running, you can go inside container.
  * here, you can leave inside docker container by typing `exit`.

* Read `Dockerfile` again under application folder path carefully and see the comment in there.

* You can call `http://localhost:8080/spring-boot-docker-sample/getHello` via Browser or Postman for testing purpose for application is running well inside container or not.

* After that you can see the code and check the code which you don't know. You can learn it, and you can apply in your job or study fields.

***Have Fun and Enjoy in Learning Code***


<a name="contact"></a>
## ✉️ Contact
Name - Ye Win <br> LinkedIn profile -  [Ye Win's LinkedIn](https://www.linkedin.com/in/ye-win-1a33a292/)  <br> Email Address - yewin.mmr@gmail.com

Project Link: [Spring Boot Docker Sample](https://github.com/yewin-mm/spring-boot-docker-sample)


<a name="contributing"></a>
## ⭐ Contributing
Contributions are what make the open source community such an amazing place to be learnt, inspire, and create. Any contributions you make are **greatly appreciated**.
<br>If you want to contribute....
1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/yourname`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeatures'`)
4. Push to the Branch (`git push -u origin feature/yourname`)
5. Open a Pull Request

