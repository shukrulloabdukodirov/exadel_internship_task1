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
