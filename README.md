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
* This is the sample project for spring-boot using docker and build dockerized application.

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
- [Becoming a Sponsor](#becoming-a-sponsor)
- [Contributing](#Contributing)


<a name="about-the-project"></a>
## ⚡️About The Project
This is Demo Project for Spring boot with docker. <br>
As of now, running application as container way is the best option to manage application deployment. (you can find more about benefits of using docker in google). <br>
You can learn how to add configuration in Dockerfile to build dockerized application. <br>
I've dropped some docker commands to run application in below [Instruction](#instruction) section. <br>
For more about docker and docker commands, you can learn more about in google.


<a name="built-with"></a>
### 🪓 Built With
This project is built with
* [Java](https://www.oracle.com/java/technologies/javase/javase8-archive-downloads.html)
* [Maven](https://maven.apache.org/download.cgi)
* [Docker](https://www.docker.com/products/docker-desktop/)


<a name="getting-started"></a>
## 🔥 Getting Started
This project purpose is to run java application as `docker container` and so, if you want to run your application as container, <br>
you need to install `Docker` in your machine. [Get Docker](https://www.docker.com/products/docker-desktop/) <br>
If you are using window, you need to enable Hyper-V in your laptop. <br>
If you got installation error, you can find more about install Docker in here, [Install docker on Window](https://docs.docker.com/desktop/install/windows-install/) <br>

So, please make sure all are installed in your machine.<br>
- After installation was success, please note that docker will open when you turn on your computer as default and it will take space on RAM of your machine. <br> 
So, you need to set the setting that **not to open always** when you turn on your computer (login account) to reduce unnecessary taking space when you are not using related with docker.
- Open `docker desktop` and you can see `docker icon` which are at noti bar. (Window user need to expand arrow which bottom right corner to see docker icon whereas Mac user can see at top noti bar).
- `Right click` on docker icon and click `Dashboard`, after docker desktop was open, click `setting icon` (top right corner) and `uncheck` (untip) mark on `“Start Docker Desktop when you login”` in `General` tab. Click `“Apply & Restart”`.
- With that setting, you can close, open whatever you want and it **will not open always** when you turn on your computer anymore.

You can do step by step as I showed in [Instruction](#instruction) section.


<a name="before-you-begin"></a>
### 🔔 Before you begin
If you are new in Git, Github and new in Spring Boot configuration structure, <br>
You should see basic detail instructions first in here [Spring Boot Application Instruction](https://github.com/yewin-mm/spring-boot-app-instruction)<br>
If you are not good enough in basic API knowledge with Java Spring Boot and other spring basic knowledge, you should learn below example projects first. <br>
Click below links.
* [Spring Boot Sample CRUD Application](https://github.com/yewin-mm/spring-boot-sample-crud) (for sample CRUD application)
* [Reading Values from Properties files](https://github.com/yewin-mm/reading-properties-file-values) (for reading values from properties files)
* [Some Docker Basic commands](https://www.edureka.co/blog/docker-commands/) (from edureka website)



<a name="clone-project"></a>
### 🥡 Clone Project
* Clone the repo
   ```sh
   git clone https://github.com/yewin-mm/spring-boot-docker-sample.git
   ```
<a name="prerequisites"></a>
### 🔑 Prerequisites
Prerequisites can be found in here [Spring Boot Application Instruction](https://github.com/yewin-mm/spring-boot-app-instruction). <br>
You need to install `Docker` in your machine. [Get Docker](https://www.docker.com/products/docker-desktop/)


<a name="instruction"></a>
### 📝 Instruction
* (Without Using Docker) If you don't want to use docker and just for testing application, you can directly run the project in your IDE. But this project purpose is to run with docker.
* (With Docker), Open Docker Desktop in your machine. (Start docker).
* First of all, you can check Dockerfile which under project folder.
* You can't run your application as container without that Dockerfile. 
* Go to your application folder with command prompt CMD (for window) or Terminal (for Mac and Linux) or you can open your IDE Terminal while you opening the project with your IDE. <br>
* Below commands need to type in your `CMD` or `Terminal` where path should be in your application folder.
* Generate jar file 
  * Type -> `mvn clean package` or you can type `mvn clean package -DskipTests=true` for skipping test for unnecessary compile time error.
  * You can also type `mvn clean install` or `mvn clean install -DskipTests=true` for skipping compile time error.
* Check docker version to make sure your installed docker is up or down by typing `docker --version`, 
* If you can't see docker version by above command, you need to open docker (docker desktop) or something wrong with your installation process for docker. Check more about docker installation error in google.
* Create docker image
  * Before do below build command, 
    * Please make sure Docker Desktop (Docker service) is open in your machine.
    * Please make sure your generated jar file (generate with above `mvn clean package`) is under target folder.
    * Because docker build image will read `Dockerfile` and do process as per `Dockerfile`, So, if your jar file name is not same with `Dockerfile`, you can't create image.
    * Please make sure your jar file name under target folder and jar file name in COPY keyword of `Dockerfile` must be same.
  * If all are ok, create your application to docker image by below command.
  * Type
    ```sh
    docker build -t spring-boot-docker-sample .
    ```
  * In there, you can define your application image name as you want instead of spring-boot-docker-sample.
  * In there, you need to add dot `(.)` at the end of build command by spacing.
  * In there, you can add tag version after application name like below, if you don't set tag version, the application will go with tag version: latest as default.
  * with tag version -> `docker build -t spring-boot-docker-sample:1.0 .`

  * You can check your created docker images with below command.
  * ```sh
    docker images
    ```
  * Here, If created, you can see Repository name (image name), Tag (version), Image Id, Created date, etc.
  * If not created, you need to check Dockerfile like jar file name is same with target folder and your CMD or terminal path is under project directory or not.

* Run docker images as container
  * Docker will run as container by reading image, So, please make sure your image is already created.
  * Type
    ```sh
    docker run -d -p 8080:8080 spring-boot-docker-sample
    ```
  * In there, `-d` is detached mode and if we put `-d` in docker, application logs will be hidden and run in background.
  * If you can't call your application call well (app can't start), you can remove `-d` option to see the running logs.
  * If your application was running well, you can shut down application by clicking `ctrl+c` if you run without `-d` option and you can start the application by adding `-d` option again.
  * You can check your container is running or not by typing `docker ps`.
  * `-p` is port which we need to add and bind with tcp port.
  * In `-p` 8080:8080,
    * The last 8080 is the port which run inside docker, and it's need to same with the port which we added (you can add port if you want) in application.properties file.
    * The first 8080 is the port which can call from outside and bind with inside running port 8080.
    * So, you can change the first port to other ports like -p 9090:8080, and if so, you need to call the api of application by using 9090 port.
  * The last word is your image name and if you set tag version when you created image, <br>
  you need to add that version in run command like `docker run -d -p 8080:8080 spring-boot-docker-sample:1.0`

* Check container
  * Type (check running containers)
      ```sh
      docker ps
    
  * Here, you can see Container Id, Image name, etc.

  * Type (check all containers including running container, not running container, unsuccessful running container)
    ```sh
    docker ps -a
    
* After application was running well as container, you can test application is alive or not by calling api which I added in this demo-application. <br> 
 Call `http://localhost:8080/spring-boot-docker-sample/getHello` via Browser or Postman.

* If your application is not running well when application started up, you can check logs by removing `-d` to appear log in CMD or Terminal like below. <br>
 run without detached mode `docker run -p 8080:8080 spring-boot-docker-sample` <br>
 you can stop (terminate) application by pressing Ctrl+C when you run application without detached mode. <br>

* If you run application with detached mode and if you want to stop application, you can stop container.
* Please note that If you don't stop container, your application will run background the whole time.
  * Type
    ```sh
    docker stop {container_id}
  * here, you can get your application container id by typing `docker ps`. (If your container is already stopped, you cannot see that by `docker ps` and you need to find stopped containers with `docker ps -a`).
  * copy your container id and put it instead {} brackets variable. eg. `docker stop 12077ee7d46f`

* If you want to start the application next time, you can start application easily with below command.
* Please note that, you don't need to create `image` again and you don't need to run `image` again if you want to re-start application which is stopped.
* That is the one of the good approach using container for running application. All you need is just `start` and `stop` to run, stop your application.
  * Type
    ```sh
    docker start {container_id}
    ```
  * You don't need to type `docker run` again. Just need to type start and id.
  * here, you can get your stopped application container id by typing `docker ps -a`.
  * here, `-a` flag is because if you stopped container, you cannot see that container id by typing `docker ps`. That's why need to put `-a` to get stopped container id.

* If you want to check running application logs or your output log values, you can type docker logs option.
  * Type 
    ```sh
    docker logs -f -n 200 {container_id}
    ```
  * Here, -f mean follow the logs for upcoming logs and -n mean line number follow by number of lines to reduce appearing huge amount of logs.
  * You can reference for more details about logs in [Docker official log documentation](https://docs.docker.com/engine/reference/commandline/logs/) or you can find usage in google.
  * You can exit following logs by clicking `Ctrl+c`.

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
 you can either go inside into container for seeing logs, jar file as your path, folder, etc. Every application has own containers.
* To go inside your application container
  * Type
      ```sh
      docker exec -it {container_id} /bin/bash
      
  * You can also type `docker exec -it {container_id} /bin/sh` or `docker exec -it {container_id} bash`
  * here, you can get your application container id by typing `docker ps`. 
  * If container is not up (not running), you can't go inside container.
  * here, you can leave inside docker container by typing `exit` inside container.

* Check Docker disk space as some unnecessary images and unused containers may take much space
  * Type 
    ```sh
    docker system df
    ```
  
* Below are for cleaning all unused containers, images, networks, volumes and build cache
  * If you've tested many containers and images, it will create build cache and that cache will take much space on your disk.
  * To remove build cache
    * Type 
      ```sh
      docker builder prune
      ```
    
  * If you've tested many containers and images and if you are lazy to remove (delete) tested many containers and images `one by one`, <br>
  you can remove that by below commands are to reduce taking docker space on your disk.
  * You should clean (remove) `unused containers and images` to reduce taking docker space. <br> 
  But if you've planned to use that container in the future, you don't need to remove the container and just stopping is ok. <br>
  You can even remove the container without removing its image if you've planned to use in the future.
  * You can check disk space first by typing `docker system df`.
  
  * To remove all unused or stopped or unsuccessful containers (recommended way)
    * Type 
      ```sh
      docker container prune
      ```

  * To remove all unused images (recommended way)
    * Type
       ```sh
       docker image prune
       ```

  * To remove all unused networks <br> (need to take care your network because your container may just stop for a while and if that container used the network, that will also be removed as container is stopped that time if you do below command. <br> Please note that you can't start your container again after you clean the network which are mapping (bind) with container)
    * Type
       ```sh
       docker network prune
       ```

  * To remove all unused volume (need to take care your volumes is used by other unactive containers which will use in future <br> because it may lose your data if you stored some data from database in that volume) <br> You can do below command and if you don't want to lose data, please run your necessary containers like DB containers if you stopped before (no need to re-run if your necessary DBs are already running) and type below command, that will delete only unused volume and don't delete volume that are connected with running containers. So that your data volume won't deleted. <br> And you should delete unused volumes as some unnecessay volumes take much disk space.
    * Type
       ```sh
       docker volume prune
       ```

  * To remove all unused containers, images and networks (including cache)
    * Type
       ```sh
       docker system prune
       ```

  * For more about cleaning multiple docker conatiners, images, etc, you can find in google.

* Read `Dockerfile` again under application folder path carefully and see the comment in there.

* You can call `http://localhost:8080/spring-boot-docker-sample/getHello` via Browser or Postman for testing purpose for application is running well inside container or not.

* After that you can see the code and check the code which you don't know. You can learn it, and you can apply in your job or study fields.

***Have Fun and Enjoy in Learning Code***


<a name="contact"></a>
## ✉️ Contact Me
Name - Ye Win <br> LinkedIn profile -  [Ye Win](https://www.linkedin.com/in/ye-win-1a33a292/)  <br> Email Address - <a href="mailto:yewin.mmr@gmail.com?">yewin.mmr@gmail.com</a> <br> WhatsApp - [+959252656065](https://wa.me/959252656065?text=Hi) <br> Website - [My Website](https://yewin.me/)

Project Link: [Spring Boot Docker Sample](https://github.com/yewin-mm/spring-boot-docker-sample)


<a name="becoming-a-sponsor"></a>
## 🥰 Becoming a Sponsor
If you like any of my projects or if you want to support my work, please kindly consider becoming a sponsor. <br>
It gives me great motivation and I can relentlessly maintain my projects and contribute to the open-source community.

<a href="https://www.buymeacoffee.com/yewin" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" width="150" ></a>


<a name="contributing"></a>
## ⭐ Contributing
Contributions are what make the open source community such an amazing place to be learnt, inspire, and create. Any contributions you make are **greatly appreciated**.
<br>If you want to contribute....
1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/yourname`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeatures'`)
4. Push to the Branch (`git push -u origin feature/yourname`)
5. Open a Pull Request