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
  region = "us-west-2"
}

# Create a VPC demo
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/22"

}

resource "aws_s3_bucket" "demo_bucket" {
	bucket = "vikas-test197654"
}

resource "aws_instance" "my_ec2" {
        ami = "ami-0b28dfc7adc325ef4"
        instance_type = "t2.micro"

  tags = {
    Name = "My-VM-from jenkins"
  }
}
