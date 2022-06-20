1.\ ![](./images/main.png) \
Main dashboard of AWS console\
2. \ ![](./images/cost_management.png) \
dashboard of cost management\
3. \ ![](./images/ec2_main.png) \
Using ec2 dashboard it is possible to create new instances\
4. \ ![img.png](images/ec2_connect.png) \
By pressing "CONNECT" it is possible to see info for connecting to instance via ssh.
For authorization while connecting it is used OpenSsh key which is generated at the time creating instance\
5.\ 
To support ssh connection between instances. We need create mutual ssh keyfile inside of home dir of instances. \
   ![](./images/from_first_to_third.png) \
   ![](./images/from_third_to_first.png) \
6.\ installed and configured nginx server: \
     a.\ 
     commands:\
           1. sudo apt update \
           2. systemctl status nginx \
     b.\ 
         wrote conf 
     c.\ 
         and last configured security group for necessary port 
        ![img.png](images/ec2_instance_security_group.png)\
7.\result:\
![img.png](images/result.png)
    
    
