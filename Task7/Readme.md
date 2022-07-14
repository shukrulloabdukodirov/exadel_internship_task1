**Task 7: Logging & Monitoring**

**Tasks:**

**1. Zabbix:**

***Big brother is watching  ....***

1. Install on server, configure web and base

`	`**Installed according to documenttation.**

https://www.zabbix.com/documentation/6.0/en/manual/installation/getting\_zabbix

1. Prepare VM or instances. 

`	`![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.001.png)

1.2.1 Install Zabbix agents on previously prepared servers or VM.

Agent installed according to documentation.

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.002.png)

1. Make several of your own dashboards, where to output data from your host/vm/container (one of them)

`	`Step1: Host created.

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.003.png)

Step2: Items created

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.004.png)

1. Active check vs passive check - use both types.

Passive check:

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.005.png)

Active check:

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.006.png)

1. Make an agentless check of any resource (ICMP ping)

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.007.png)

1. Provoke an alert - and create a Maintenance instruction

Step1: Media type is configured

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.008.png)

Step2: User meil is set

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.009.png)



Step3: Action is created

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.010.png)

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.011.png)

Result:

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.012.png)

1. **Set up a dashboard with infrastructure nodes and monitoring of hosts and software installed on them**

In the sidebar Dashboard->Edit or Crfeate Dashboard. It is possible create infographics. For graphs info we use items which is created above.

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.013.png)

All dashboards

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.014.png)

Graphs of zabbix server

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.015.png)

**Cpu load graph and memory usage of server x host which is installed agent**

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.016.png)

**Map of local network**

**2. ELK:**

***Nobody is forgotten and nothing is forgotten.***

**2.1 Install and configure ELK**

<https://github.com/shukrulloabdukodirov/exadel_internship_tasks/tree/main/Task7/docker-elk>

Using this packege credits from: deviantony/docker-elk

*docker-compose up -d*

**2.2 Organize collection of logs from docker to ELK and receive data from running containers**

**Step1:Configured logstash conf** 

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.017.png)

**Step2:**

**And new container added using *log-driver  and log-opt***

*docker run  --log-driver=syslog  --log-opt syslog-address=tcp://:5000 --log-opt syslog-facility=daemon -p 8080:80 nginx:latest* 

**Every new container should consist of specific options which specifies --log-driver**

Added data view

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.018.png)

**2.3 Customize your dashboards in ELK**

**Added dashboard of logs**

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.019.png)

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.020.png)

**2.5 Configure monitoring in ELK, get metrics from your running containers**

**Added metric beat container**

*docker-compose -f docker-compose.yml -f extensions/metricbeat/metricbeat-compose.yml up -d*

*Metric beat helps gather data about host*

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.021.png)


**And docker module of metric beat shows info about all running containers**

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.022.png)

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.023.png)

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.024.png)

**3. Grafana:**

3.1 Install Grafana

**Installed grafana according documentation**

3.2 Integrate with installed ELK

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.025.png)![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.026.png)

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.027.png)

3.3 Set up Dashboards

**Using query generator of grafana elasticsearch pluginwe can get values by keys**

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.025.png)

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.028.png)

![](Readme2/Aspose.Words.0aa8ec6b-d96e-4fbb-96e8-23f7d544688a.029.png)


