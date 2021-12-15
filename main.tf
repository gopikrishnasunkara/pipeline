terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.38"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}

# Create a VPC demo
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/22"

}

resource "aws_instance" "my_ec2" {
        ami = "ami-03af6a70ccd8cb578"
        instance_type = "t2.micro"
        count = 2

  tags = {
    Name = "My-VM-from jenkins"
  }
}
