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

resource "aws_instance" "ubuntu_server" {
  ami           = var.ami_ubuntu
  instance_type = var.instance_type_micro
  subnet_id = aws_subnet.public-subnet-1.id
  vpc_security_group_ids = [aws_security_group.webserver-security-group.id]
  key_name = "ec2_for_work"
  user_data = file("install-nginx-and-docker.sh")
  tags = {
    Name = "UbuntuServer"
  }
}
resource "aws_instance" "centos_server" {
  ami           = var.ami_centos
  instance_type = var.instance_type_micro
  subnet_id = aws_subnet.private-subnet-1.id
  tags = {
    Name = "CentOsServer"
  }
}
