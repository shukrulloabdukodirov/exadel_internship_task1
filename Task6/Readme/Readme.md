**TASK-6**

\1. Install Jenkins. It must be installed in a docker container.

`	`**Commands:**

1. ` `docker run -p 8080:8080 -p 50000:50000 \

` `-d -v jenkins\_home:/var/jenkins\_home jenkins/jenkins:lts

***Result:***

![](Aspose.Words.5761dc4e-f1b1-4ccc-b745-08f791b04cf7.001.png)

![](Aspose.Words.5761dc4e-f1b1-4ccc-b745-08f791b04cf7.002.png)

\2. Install necessary plugins (if you need).

`	`**Default plugins installed.**

\3. Configure several (2-3) build agents. Agents must be run in docker.

**Install build agent from terminal:**

`	`**Commands:** 



1. docker exec -it -u 0 fab05f589916 bash
1. apt update
1. apt install nodejs npm -y

**Installing build agent from jenkins ui:**

![](Aspose.Words.5761dc4e-f1b1-4ccc-b745-08f791b04cf7.003.png)

**Result:**

![](Aspose.Words.5761dc4e-f1b1-4ccc-b745-08f791b04cf7.004.png)

\4. Create a Freestyle project. Which will show the current *date* as a result of execution.

**Steps:**	

\1.	

![](Aspose.Words.5761dc4e-f1b1-4ccc-b745-08f791b04cf7.005.png)

\2.

![](Aspose.Words.5761dc4e-f1b1-4ccc-b745-08f791b04cf7.006.png)

\3.

![](Aspose.Words.5761dc4e-f1b1-4ccc-b745-08f791b04cf7.007.png)

**Result:**

![](Aspose.Words.5761dc4e-f1b1-4ccc-b745-08f791b04cf7.008.png)

\5. Create Pipeline which will execute **docker ps -a in** *docker agent*, running on *Jenkins master’s Host*.

**Command for running docker inside of jenkins:**

1. docker stop f9a8f76630e0 - stop active container
1. docker run -p 8080:8080 -p 50000:50000 -d -v jenkins\_home:/var/jenkins\_home -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/usr/bin/docker jenkins/jenkins:lts - run new container with new volume binding to current docker
1. docker exec -u 0 -it 426f0d981c2d bash
1. chmod 666 /var/run/docker.sock

**Pipeline setup:**

![](Aspose.Words.5761dc4e-f1b1-4ccc-b745-08f791b04cf7.009.png)

**Jenkinsfile:**

![](Aspose.Words.5761dc4e-f1b1-4ccc-b745-08f791b04cf7.010.png)

**Result:**

![](Aspose.Words.5761dc4e-f1b1-4ccc-b745-08f791b04cf7.011.png)

6. Create Pipeline, which will build artifact using Dockerfile directly from your github repo (use Dockerfile from previous task).

**Jenkins file**:

![](Aspose.Words.5761dc4e-f1b1-4ccc-b745-08f791b04cf7.012.png)

**Result:**

![](Aspose.Words.5761dc4e-f1b1-4ccc-b745-08f791b04cf7.013.png)

![](Aspose.Words.5761dc4e-f1b1-4ccc-b745-08f791b04cf7.014.png)

6. Pass  variable PASSWORD=QWERTY! To the docker container. **Variable must be encrypted!!!**

**Jenkins  credentials:**

![](Aspose.Words.5761dc4e-f1b1-4ccc-b745-08f791b04cf7.015.png)

**Usage  in jenkinsfile:**

` `![](Aspose.Words.5761dc4e-f1b1-4ccc-b745-08f791b04cf7.016.png)





**Result:**

![](Aspose.Words.5761dc4e-f1b1-4ccc-b745-08f791b04cf7.017.png)
