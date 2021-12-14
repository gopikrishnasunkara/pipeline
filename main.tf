terrform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.38"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# Create a VPC demo
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
