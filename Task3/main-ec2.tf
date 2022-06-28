terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}
resource "aws_network_interface" "web-server-nic" {
  subnet_id       = aws_subnet.public-subnet-1.id
  private_ips     = ["10.0.1.50"]
  security_groups = [aws_security_group.allow_web.id]
}
resource "aws_eip" "one" {
  vpc                       = true
  network_interface         = aws_network_interface.web-server-nic.id
  associate_with_private_ip = "10.0.1.50"
  depends_on                = [aws_internet_gateway.internet-gateway]
}

resource "aws_instance" "ubuntu_server_test" {
  ami           = var.ami_ubuntu
  instance_type = var.instance_type_micro
  availability_zone = "us-east-1a"
  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.web-server-nic.id
  }
  user_data = <<-EOF
                #!/bin/bash
                sudo apt update -y
                sudo apt install apache2 -y
                sudo systemctl start apache2
                sudo bash -c 'echo your very first web server > /var/www/html/index.html'
                EOF
  key_name = "ec2_for_work"
  tags = {
    Name = "UbuntuServerTest"
  }
}

resource "aws_instance" "ubuntu_server" {
  ami           = var.ami_ubuntu
  instance_type = var.instance_type_micro
  subnet_id = aws_subnet.public-subnet-1.id
  vpc_security_group_ids = [aws_security_group.allow_web.id]
  key_name = "ec2_for_work"
  root_block_device {
    delete_on_termination = true
    volume_size = 30
    volume_type = "gp3"
  }
  tags = {
    Name = "UbuntuServer"
  }
}
resource "aws_instance" "centos_server" {
  ami           = var.ami_centos
  instance_type = var.instance_type_micro
  subnet_id = aws_subnet.private-subnet-1.id
  key_name = "ec2_for_work"
  tags = {
    Name = "CentOsServer"
  }
}
