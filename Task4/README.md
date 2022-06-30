**TASK-4**

1. **Installing docker:**

Official documentation: [https://docs.docker.com/engein/install/ubuntu/](https://docs.docker.com/engein/install/ubuntu/)

_ **Commands:** _

1. _sudo apt-get update_
2. _sudo apt-get install \ ca-certificates \ curl \ gnupg \ lsb-release_
3. _sudo mkdir -p /etc/apt/keyrings_
4. _curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg_
5. _echo \&quot;deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg]https://download.docker.com/linux/ubuntu \$(lsb\_release -cs) stable&quot; | sudo tee /etc/apt/sources.list.d/docker.list \&gt; /dev/null_

_The last step is shows the result whether docker installed correctly or not:_

1. _ **sudo docker run hello-world** _

_ **Result:** _

![](RackMultipart20220630-1-dk5p0p_html_7f40404f19ab8a3f.png)

1. **Find download create and run docker container**

**Commands:**

1. _docker pull ${image\_name} -_ downloads image from: [_https://hub.docker.com/_](https://hub.docker.com/)

**Example:** _docker pull redis_

1. docker run {image\_name} **-** pulls and runs image

**Example:** _docker run -p 6000:3000 -d --name redis-older redis:4.0_

_-p is for port bind. First value is port of the host second is port of the container_

_-d is for running in detached mode. It runs in the background._

_--name is for registering image locally with specified name_

_redis:4.0 : redis is name of image form hub. 4.0 is the tag if this image._

1. _docker images_

**Result:**

![](RackMultipart20220630-1-dk5p0p_html_5b1cb19d083005c2.png)

1. docker ps -a | docker ps (list of all containers | list of running containers)

**Result** :

![](RackMultipart20220630-1-dk5p0p_html_467d290c28a782ff.png)

![](RackMultipart20220630-1-dk5p0p_html_121f7ed6c60bac50.png)

1. docker logs ${container\_id}: log of container

**Result:**

![](RackMultipart20220630-1-dk5p0p_html_558ae09bdd04e8b8.png)

1. docker start | stop | rm | rmi

_docker stop ${container\_id} -_ stops container

_docker start ${container\_id} -_ start container

_docker rm ${container\_id} -_ delete container

_docker rmi ${image id} -_ delete image

**Additional usefull:**

docker stop $(docker ps -a -q) - stops all containers

docker rm $(docker ps -a -q) - deletes all containers

**3.1.** Docker file

![](RackMultipart20220630-1-dk5p0p_html_3cde97d43aefc547.png)

**Commands:**

1. FROM is for downloading image
2. RUN is an image build step, the state of the container after a RUN command will be committed to the container image. A Dockerfile can have many RUN steps that layer on top of one another to build the image.
3. COPY is copies project folder into container path
4. CMD is the command the container executes by default when you launch the built image. A Dockerfile will only use the final CMD defined.

1. _docker build -t my-app:1.0 . -_ builds image form docker file

. - is path to Dockerfile

**Result:**

![](RackMultipart20220630-1-dk5p0p_html_ad7f6a2dd6a880fc.png)

**3.1.1**

1. ENV values are available to containers, but also RUN-style commands during the Docker build starting with the line where they are introduced.

**Example:** RUN echo &quot;$DEVOPS&quot;

**4.** Push docker image to docker hub

1. _docker build -t my-app:3.0 . for build image_

**Result:**

![](RackMultipart20220630-1-dk5p0p_html_2ac504e8fa653123.png)

1. _docker tag my-app:3.0 shukrulloabdukodirov/exdelmyapp:3.0_

**Result:**

![](RackMultipart20220630-1-dk5p0p_html_b1112acfccc54b4e.png)

1. _docker push shukrulloabdukodirov/exdelmyapp:3.0_

_Result:_

![](RackMultipart20220630-1-dk5p0p_html_fcdaaf87d38da9c1.png)

![](RackMultipart20220630-1-dk5p0p_html_ec37d60135257b3e.png)

5. Multiple container via one compose file

![](RackMultipart20220630-1-dk5p0p_html_5716afa264ef263a.png)

![](RackMultipart20220630-1-dk5p0p_html_73aa02ebae824b78.png)
