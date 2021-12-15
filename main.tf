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
  cidr_block = "10.0.0.0/24"

  tags = {
	    Owner       = "Vikas
	    Environment = "dev"
	    Name = "My-newVPC
	  }
}

