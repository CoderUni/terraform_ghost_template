terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

# Create an EC2 instance

resource "aws_instance" "blog" {
  ami = "ami-02c87b06d719a84f5"
  instance_type = "t3.micro"
}