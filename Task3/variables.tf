variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default = "10.1.0.0/16"
}
variable "cidr_subnet_public" {
  description = "CIDR block for the subnet"
  default = "10.1.0.0/24"
}

variable "cidr_subnet_private" {
  description = "CIDR block for the subnet"
  default = "10.1.1.0/24"
}
variable "region" {
  description = "Region for vpc"
  default = "us-east-1"
}
variable "availability_zone" {
  description = "availability zone to create subnet"
  default = "us-east-1a"
}
variable "public_key_path" {
  description = "Public key path"
  default = "~/.ssh/id_rsa.pub"
}
variable "ami_ubuntu" {
  description = "UBUNTU AMI for aws EC2 instance"
  default = "ami-052efd3df9dad4825"
}
variable "ami_centos" {
  description = "CENTOS AMI for aws EC2 instance"
  default = "ami-00136e28b857c0ebd"
}
variable "instance_type_micro" {
  description = "type for aws EC2 instance"
  default = "t2.micro"
}
variable "environment_tag" {
  description = "Environment tag"
  default = "Production"
}

variable "ssh_location" {
  description = "Ip address that can ssh into EC@ instance"
  default = "0.0.0.0/0"
  type = string
}
