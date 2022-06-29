1. Install docker. (Hint: please use VMs or Clouds  for this.)
     
    ###Linux install by documentation

2. Find, download and run any docker container "hello world". (Learn commands and parameters to create/run docker containers.
    ####Commands:
   1. docker pull ${image-from-dockerhub}
   2. docker run -d -p 3000:6000 --name myapp myapp:1.0
   3. docker logs ${container-id}
   4. docker ps -a
   
3.1. Create your Dockerfile for building a docker image. Your docker image should run any web application (nginx, apache, httpd). Web application should be located inside the docker image.
###Steps:
1. Docker file in ./Task4/Dockerfile for building my app image
2. docker build -t my-app:1.0 .
3. docker tag my-app shukrulloabdukodirov/exdelmyapp:latest
4. docker push shukrulloabdukodirov/exdelmyapp:latest
5. link to image repo: https://hub.docker.com/repository/docker/shukrulloabdukodirov/exdelmyapp

EXTRA 3.1.1. For creating docker image use clear basic images (ubuntu, centos, alpine, etc.)
3.2. Add an environment variable "DEVOPS=<username> to your docker image
done by using ENV in dockerfile 
EXTRA 3.2.1. Print environment variable with the value on a web page (if environment variable changed after container restart - the web page must be updated with a new value)

4. Push your docker image to docker hub (https://hub.docker.com/). Create any description for your Docker image.
   EXTRA 4.1. Integrate your docker image and your github repository. Create an automatic deployment for each push. (The Deployment can be in the “Pending” status for 10-20 minutes. This is normal).
##link to dockerhub
    1.link to image repo: https://hub.docker.com/repository/docker/shukrulloabdukodirov/exdelmyapp


5. Create docker-compose file. Deploy a few docker containers via one docker-compose file.
    first image - your docker image from the previous step. 5 nodes of the first image should be run;
    second image - any java application;
    last image - any database image (mysql, postgresql, mongo or etc.).
    Second container should be run right after a successful run of a database container.
    ###Comments:
   1. depends_on param used 
       EXTRA 5.1. Use env files to configure each service.
