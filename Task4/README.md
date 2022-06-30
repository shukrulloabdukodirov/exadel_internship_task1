**TASK-4**

1. **Installing docker:**

Official documentation: <https://docs.docker.com/engein/install/ubuntu/>

***Commands:***

1. *sudo apt-get update*
2. *sudo apt-get install \ ca-certificates \ curl \ gnupg \ lsb-release*
3. *sudo mkdir -p /etc/apt/keyrings*
4. *curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg*
5. *echo \"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg]https://download.docker.com/linux/ubuntu \$(lsb\_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null*

*The last step is shows the result whether docker installed correctly or not:*

6. ***sudo docker run hello-world*** 

***Result:***

![](Readme/Aspose.Words.cd484c58-7cf4-4f61-9f47-efdcc4b2c755.001.png)

2. **Find download create and run docker container**

**Commands:**
1. **
   ` `*docker pull ${image\_name} -* downloads image from: [*https://hub.docker.com/*](https://hub.docker.com/)

**Example:** *docker pull redis*

2. ** docker run {image\_name} **-** pulls and runs image

**Example:** *docker run -p 6000:3000 -d --name redis-older redis:4.0*

`	`*-p is for port bind. First value is port of the host second is port of the container*

`	`*-d is for running in detached mode. It runs in the background.*

`	`*--name is for registering image locally with specified name*

`	`*redis:4.0 : redis is name of image form hub. 4.0 is the tag if this image.*


3. *docker images*

**Result:**

![](Readme/Aspose.Words.cd484c58-7cf4-4f61-9f47-efdcc4b2c755.002.png)

4. docker ps -a | docker ps (list of all containers | list of running containers)

**Result**:

![](Readme/Aspose.Words.cd484c58-7cf4-4f61-9f47-efdcc4b2c755.003.png)

![](Readme/Aspose.Words.cd484c58-7cf4-4f61-9f47-efdcc4b2c755.004.png)

5. ` `docker logs ${container\_id}: log of container

**Result:** 

![](Readme/Aspose.Words.cd484c58-7cf4-4f61-9f47-efdcc4b2c755.005.png)

6. docker start | stop | rm | rmi

`	`*docker stop ${container\_id} -*  stops container

`	`*docker start ${container\_id} -* start container

`	`*docker rm ${container\_id} -* delete container

`	`*docker rmi ${image id} -* delete image

`	`**Additional usefull:**

`	`docker stop $(docker ps -a -q) - stops all containers

`	`docker rm $(docker ps -a -q) - deletes all containers

**3.1.** Docker file

![](Readme/Aspose.Words.cd484c58-7cf4-4f61-9f47-efdcc4b2c755.006.png)

` `**Commands:**

1. FROM is for downloading image
2. RUN is an image build step, the state of the container after a RUN command will be committed to the container image. A Dockerfile can have many RUN steps that layer on top of one another to build the image.
3. COPY is copies project folder into container path
4. CMD is the command the container executes by default when you launch the built image. A Dockerfile will only use the final CMD defined.



5. *docker build -t my-app:1.0 . -* builds image form docker file

`	`. - is path to Dockerfile

**Result:**

![](Readme/Aspose.Words.cd484c58-7cf4-4f61-9f47-efdcc4b2c755.007.png)

**3.1.1** 

1. ENV values are available to containers, but also RUN-style commands during the Docker build starting with the line where they are introduced.

**Example:** RUN echo "$DEVOPS"

**4.** Push docker image to docker hub

1. *docker build -t my-app:3.0 . for build  image*

**Result:**

![](Readme/Aspose.Words.cd484c58-7cf4-4f61-9f47-efdcc4b2c755.008.png)

2. *docker tag my-app:3.0 shukrulloabdukodirov/exdelmyapp:3.0*

**Result:**

![](Readme/Aspose.Words.cd484c58-7cf4-4f61-9f47-efdcc4b2c755.009.png)

3. *docker push  shukrulloabdukodirov/exdelmyapp:3.0*

*Result:*

![](Readme/Aspose.Words.cd484c58-7cf4-4f61-9f47-efdcc4b2c755.010.png)

![](Readme/Aspose.Words.cd484c58-7cf4-4f61-9f47-efdcc4b2c755.011.png)

**5.** Multiple container via one compose file



![](Readme/Aspose.Words.cd484c58-7cf4-4f61-9f47-efdcc4b2c755.012.png)

`	`![](Readme/Aspose.Words.cd484c58-7cf4-4f61-9f47-efdcc4b2c755.013.png)
