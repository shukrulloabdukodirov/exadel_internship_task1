# 1. Create EC2 Instance t2.micro
#     -Ubuntu
#     -CentOS
#     Both instances must have a tag with names.
        1. in main-ec2.tf file created instances
# 2. EC2 Ubuntu must have Internet access, there must be incoming access: ICMP, TCP/22, 80, 443, and any outgoing access.
        1. in vpc.tf file created vpc and configured internet gateway for public subnet
# 3. EC2 CentOS should not have access to the Internet, but must have outgoing and incoming access: ICMP, TCP/22, TCP/80, TCP/443 only on the local network where EC2 Ubuntu, EC2 CentOS is located.
        1. in vpc.tf file created puvblic and private subnets. Into private subnet added ec2 instances
# 4. On EC2 Ubuntu, install a web server (nginx/apache);
#  - Create a web page with the text “Hello World” and information about the current version of the operating system. This page must be visible from the Internet.
# 5. On EC2 Ubuntu install Docker, installation should be done according to the recommendation of the official Docker manuals
        1. in install-nginx-and-docker.sh file written script for installing nginx and docker
